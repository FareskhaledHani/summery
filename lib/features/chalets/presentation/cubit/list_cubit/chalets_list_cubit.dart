import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_summer/features/chalets/domain/entity/chalet_entity/chalet_entity.dart';
import 'package:my_summer/features/chalets/domain/repo/chalet_repo.dart';

import 'chalets_list_state.dart';

class ChaletsListCubit extends Cubit<ChaletsListState> {
  ChaletsListCubit(this._repository) : super(const ChaletsListState.initial());

  final ChaletRepository _repository;

  Future<void> loadChalets() async {
    emit(const ChaletsListState.loading());
    try {
      final chalets = await _repository.getAllChalets();
      final total = await _repository.getTotalPaidAcrossAllChalets();
      emit(ChaletsListState.loaded(
        chalets: chalets,
        totalPaidAcrossAll: total,
      ));
    } catch (e) {
      emit(ChaletsListState.error(e.toString()));
    }
  }

  Future<void> addChalet({required String name, String? subtitle}) async {
    try {
      await _repository.addChalet(
        ChaletEntity(
          name: name,
          subtitle: subtitle,
          createdAt: DateTime.now(),
        ),
      );
      await loadChalets(); 
    } catch (e) {
      emit(ChaletsListState.error(e.toString()));
    }
  }

  Future<void> deleteChalet(int chaletId) async {
    try {
      await _repository.deleteChalet(chaletId);
      await loadChalets();
    } catch (e) {
      emit(ChaletsListState.error(e.toString()));
    }
  }
}