import 'package:dailyx/domain/use_cases/diary/create_new_diary_entry_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/models/diary/diary_entry.dart';

part 'diary_editor_cubit.freezed.dart';
part 'diary_editor_state.dart';

@injectable
class DiaryEditorCubit extends Cubit<DiaryEditorState>{
  final CreateNewDiaryEntryUseCase _createNewDiaryEntryUseCase;

  DiaryEditorCubit(this._createNewDiaryEntryUseCase) : super(const DiaryEditorState.created());

  Future<void> saveEntry(String content) async{
    DiaryEntry entry = DiaryEntry(DateTime.now(), null, content); 
    await _createNewDiaryEntryUseCase.execute(entry);
  }
}