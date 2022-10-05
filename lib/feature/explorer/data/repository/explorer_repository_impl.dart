import 'package:coco_app/feature/explorer/data/repository/explorer_repository.dart';

import '../../../../core/networking/api_result/api_result.dart';
import '../../../../core/networking/exception_handler/network_error_handler.dart';
import '../data_source/explorer_web_service.dart';
import '../model/search_result_model.dart';

class ExplorerRepositoryImpl extends ExplorerRepository {
  final ExplorerWebService explorerWebService;
  final NetworkErrorHandler networkErrorHandler;

  ExplorerRepositoryImpl({
    required this.explorerWebService,
    required this.networkErrorHandler,
  });

  @override
  Future<ApiResult<SearchResultModel>> fetchSearchResult(
      List<int> categoryIds, int pageNum) async {
    try {
      List<int> selectedImagesId = [];
      List<int> fetchedImagesIds = [];
      if (pageNum == 1) {
        final categoriesResponse = await explorerWebService.fetchImagesIds(
            {"category_ids": categoryIds, "querytype": "getImagesByCats"});

        fetchedImagesIds = List.from(categoriesResponse);
        if (fetchedImagesIds.length >= 5) {
          selectedImagesId = fetchedImagesIds.sublist(0, 5);
        } else {
          selectedImagesId = fetchedImagesIds;
        }
      } else {
        if (fetchedImagesIds.length >= pageNum * 5) {
          selectedImagesId =
              fetchedImagesIds.sublist((pageNum - 1) * 5, pageNum * 5);
        } else {
          selectedImagesId = fetchedImagesIds.sublist(
            (pageNum - 1) * 5,
            fetchedImagesIds.length,
          );
        }
      }

      final imagesResponse = await explorerWebService.fetchImages(
          {"image_ids": selectedImagesId, "querytype": "getImages"});
      final captionsResponse = await explorerWebService.fetchCaptions(
          {"image_ids": selectedImagesId, "querytype": "getCaptions"});
      final segmentationsResponse = await explorerWebService.fetchSegmentations(
        {"image_ids": selectedImagesId, "querytype": "getInstances"},
      );

      final result = SearchResultModel.fromJson(imagesResponse,
          captionsResponse, segmentationsResponse, fetchedImagesIds.length);

      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(networkErrorHandler.dioErrorHandler(error));
    }
  }
}
