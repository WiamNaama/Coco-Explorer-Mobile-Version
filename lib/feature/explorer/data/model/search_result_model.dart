import 'image_model.dart';
import 'segmentation_model.dart';

class SearchResultModel {
  late final List<ImageModel> imagesModel;
  late final int resultNumber;

  SearchResultModel({
    required this.imagesModel,
    required this.resultNumber,
  });

  factory SearchResultModel.fromJson(
    List<dynamic> imagesJson,
    List<dynamic> captionsJson,
    List<dynamic> segmentationsJson,
    int resultNumber,
  ) {
    List<ImageModel> combinedImageModel = [];

    for (final image in imagesJson) {
      final segmentations = segmentationsJson
          .where((element) => element['image_id'] == image['id'])
          .map((e) => SegmentationModel.fromJson(e))
          .toList();

      final captions = captionsJson
          .where((element) => element['image_id'] == image['id'])
          .map((e) => e['caption'].toString())
          .toList();

      combinedImageModel
          .add(ImageModel.fromJson(image, segmentations, captions));
    }
    return SearchResultModel(
      imagesModel: combinedImageModel,
      resultNumber: resultNumber,
    );
  }
}
