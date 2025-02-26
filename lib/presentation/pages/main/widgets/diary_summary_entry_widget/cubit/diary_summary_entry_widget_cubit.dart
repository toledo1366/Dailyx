import 'package:dailyx/core/routing/app_router.dart';
import 'package:dailyx/domain/models/diary/diary_entry.dart';
import 'package:dailyx/domain/use_cases/diary/get_diary_entry_for_today_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'diary_summary_entry_widget_state.dart';
part 'diary_summary_entry_widget_cubit.freezed.dart';

@injectable
class DiarySummaryEntryWidgetCubit extends Cubit<DiarySummaryEntryWidgetState>{
  final GetDiaryEntryForTodayUseCase _diaryEntryForTodayUseCase;

  DiarySummaryEntryWidgetCubit(this._diaryEntryForTodayUseCase):super(const DiarySummaryEntryWidgetState.loading()){
    Future.delayed(const Duration(seconds: 3), () => checkEntryForToday());
  }

  void checkEntryForToday() async {
    try{
      final DiaryEntry? entry = await _diaryEntryForTodayUseCase.execute();
      entry == null ? emit(const DiarySummaryEntryWidgetState.noEntry()) : emit(DiarySummaryEntryWidgetState.success(entry));
    } catch (ex) {
      emit(const DiarySummaryEntryWidgetState.error());
    }
  }
  
  void navigateToDiaryEditor() async {
    router.push('/diary_editor');
  }
}