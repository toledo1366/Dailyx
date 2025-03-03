// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auth/auth_exports.dart' as _i797;
import 'package:dailyx/data/repositories/diary/diary_repository_implementation.dart'
    as _i324;
import 'package:dailyx/data/repositories/tasks/tasks_repository_implementation.dart'
    as _i461;
import 'package:dailyx/domain/mappers/diary/diary_entry_mapper.dart' as _i54;
import 'package:dailyx/domain/mappers/tasks/task_mapper.dart' as _i636;
import 'package:dailyx/domain/repositories/diary/diary_repository.dart'
    as _i528;
import 'package:dailyx/domain/repositories/tasks/tasks_repository.dart'
    as _i563;
import 'package:dailyx/domain/use_cases/diary/create_new_diary_entry_use_case.dart'
    as _i752;
import 'package:dailyx/domain/use_cases/diary/get_diary_entry_for_today_use_case.dart'
    as _i202;
import 'package:dailyx/domain/use_cases/login/login_with_email_and_password_use_case.dart'
    as _i636;
import 'package:dailyx/domain/use_cases/login/login_with_google_use_case.dart'
    as _i413;
import 'package:dailyx/domain/use_cases/tasks/create_new_task_use_case.dart'
    as _i47;
import 'package:dailyx/domain/use_cases/tasks/get_tasks_use_case.dart' as _i836;
import 'package:dailyx/presentation/pages/diary_editor/cubit/diary_editor_cubit.dart'
    as _i996;
import 'package:dailyx/presentation/pages/login/cubit/login_cubit.dart'
    as _i112;
import 'package:dailyx/presentation/pages/main/cubit/main_page_cubit.dart'
    as _i804;
import 'package:dailyx/presentation/pages/main/widgets/diary_summary_entry_widget/cubit/diary_summary_entry_widget_cubit.dart'
    as _i18;
import 'package:dailyx/presentation/pages/main/widgets/tasks_summary_widget/cubit/tasks_summary_widget_cubit.dart'
    as _i236;
import 'package:dailyx/presentation/pages/task_creation_form/cubit/task_creation_form_cubit.dart'
    as _i553;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i636.TaskMapper>(() => _i636.TaskMapper());
    gh.factory<_i54.DiaryEntryMapper>(() => _i54.DiaryEntryMapper());
    gh.factory<_i563.TasksRepository>(
        () => _i461.TasksRepositoryImplementation());
    gh.factory<_i528.DiaryRepository>(
        () => _i324.DiaryRepositoryImplementation());
    gh.factory<_i413.LoginWithGoogleUseCase>(
        () => _i413.LoginWithGoogleUseCase(gh<_i797.AuthService>()));
    gh.factory<_i636.LoginWithEmailAndPasswordUseCase>(
        () => _i636.LoginWithEmailAndPasswordUseCase(gh<_i797.AuthService>()));
    gh.factory<_i47.CreateNewTaskUseCase>(() => _i47.CreateNewTaskUseCase(
          gh<_i563.TasksRepository>(),
          gh<_i636.TaskMapper>(),
        ));
    gh.factory<_i752.CreateNewDiaryEntryUseCase>(
        () => _i752.CreateNewDiaryEntryUseCase(
              gh<_i54.DiaryEntryMapper>(),
              gh<_i528.DiaryRepository>(),
            ));
    gh.factory<_i202.GetDiaryEntryForTodayUseCase>(
        () => _i202.GetDiaryEntryForTodayUseCase(
              gh<_i54.DiaryEntryMapper>(),
              gh<_i528.DiaryRepository>(),
            ));
    gh.factory<_i836.GetTasksUseCase>(() => _i836.GetTasksUseCase(
          gh<_i636.TaskMapper>(),
          gh<_i563.TasksRepository>(),
        ));
    gh.factory<_i112.LoginCubit>(() => _i112.LoginCubit(
          gh<_i636.LoginWithEmailAndPasswordUseCase>(),
          gh<_i413.LoginWithGoogleUseCase>(),
        ));
    gh.factory<_i18.DiarySummaryEntryWidgetCubit>(() =>
        _i18.DiarySummaryEntryWidgetCubit(
            gh<_i202.GetDiaryEntryForTodayUseCase>()));
    gh.factory<_i553.TaskCreationFormCubit>(
        () => _i553.TaskCreationFormCubit(gh<_i47.CreateNewTaskUseCase>()));
    gh.factory<_i996.DiaryEditorCubit>(
        () => _i996.DiaryEditorCubit(gh<_i752.CreateNewDiaryEntryUseCase>()));
    gh.factory<_i804.MainPageCubit>(
        () => _i804.MainPageCubit(gh<_i836.GetTasksUseCase>()));
    gh.factory<_i236.TasksSummaryWidgetCubit>(
        () => _i236.TasksSummaryWidgetCubit(gh<_i836.GetTasksUseCase>()));
    return this;
  }
}
