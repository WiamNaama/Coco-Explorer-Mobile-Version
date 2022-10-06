import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/search_result_model.dart';
import '../../data/repository/explorer_repository.dart';

part 'explorer_state.dart';
part 'explorer_cubit.freezed.dart';

class ExplorerCubit extends Cubit<ExplorerState> {
  final ExplorerRepository explorerRepository;

  ExplorerCubit({
    required this.explorerRepository,
  }) : super(const ExplorerState.initial());

  /// Emit the [ExplorerState.loading()] state first then
  ///
  /// emit the [ExplorerState.successResult] state that represent [SearchResultModel] when
  /// the explorerRespository return success.
  /// if explorerRespository return failuser emit [ExplorerState.errorResult].
  void emitSearchResult(List<int> categoryIds, int pageNum) async {
    emit(const ExplorerState.loading());
    var response =
        await explorerRepository.fetchSearchResult(categoryIds, pageNum);
    response.when(
      success: (SearchResultModel images) {
        emit(ExplorerState.successResult(images));
      },
      failure: (String errorMessage) {
        emit(ExplorerState.errorResult(errorMessage));
      },
    );
  }
}
