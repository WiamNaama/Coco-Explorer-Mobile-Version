part of 'explorer_cubit.dart';

@freezed
class ExplorerState with _$ExplorerState {
  const factory ExplorerState.initial() = Initial;
  const factory ExplorerState.loading() = Loading;
  const factory ExplorerState.successResult(SearchResultModel data) =
      SuccessResult;
  const factory ExplorerState.errorResult(String errorMessage) = ErrorResult;
}
