import 'package:dailyx/domain/entities/diary/diary_entity.dart';
import 'package:dailyx/domain/use_cases/diary/add_new_diary_entry_use_case.dart';
import 'package:dailyx/domain/use_cases/diary/get_diary_list_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'diary_list_cubit.freezed.dart';
part 'diary_list_state.dart';

@injectable
class DiaryListCubit extends Cubit<DiaryListState>{
  GetDiaryListUseCase _getDiaryListUseCase;
  AddNewDiaryEntryUseCase _addNewDiaryEntryUseCase;

  List<DiaryEntity> items = [];
  
  DiaryListCubit(this._getDiaryListUseCase, this._addNewDiaryEntryUseCase):super(const DiaryListState.loading());

  void fetchData() {
    items = _getDiaryListUseCase.execute();

    items.isNotEmpty ? emit(DiaryListState.success(items)) : emit(const DiaryListState.empty());
  }
}