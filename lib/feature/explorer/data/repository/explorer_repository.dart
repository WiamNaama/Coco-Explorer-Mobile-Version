import '../../../../core/networking/api_result/api_result.dart';
import '../model/search_result_model.dart';

abstract class ExplorerRepository {
  Future<ApiResult<SearchResultModel>> fetchSearchResult(
    List<int> categoryIds,
    int pageNum,
  );
}
