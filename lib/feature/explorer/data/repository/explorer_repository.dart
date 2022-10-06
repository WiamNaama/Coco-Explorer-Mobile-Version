import '../../../../core/networking/api_result/api_result.dart';
import '../model/search_result_model.dart';

abstract class ExplorerRepository {
  /// Return [ApiResult.success] with [SearchResultModel] if everything was okay
  ///
  /// else will return [ApiResult.failure] if some error occurs.
  Future<ApiResult<SearchResultModel>> fetchSearchResult(
    List<int> categoryIds,
    int pageNum,
  );
}
