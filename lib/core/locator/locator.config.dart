// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dailyx/domain/repositories/diary/diary_repository.dart' as _i3;
import 'package:dailyx/domain/use_cases/diary/add_new_diary_entry_use_case.dart'
    as _i8;
import 'package:dailyx/domain/use_cases/diary/get_diary_list_use_case.dart'
    as _i4;
import 'package:dailyx/presentation/pages/diary/cubit/diary_list_cubit.dart'
    as _i9;
import 'package:dailyx/presentation/pages/home/cubit/home_cubit.dart' as _i5;
import 'package:dailyx/presentation/pages/login/cubit/login_cubit.dart' as _i6;
import 'package:dailyx/presentation/pages/task_form/cubit/task_form_cubit.dart'
    as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.DiaryRepository>(() => _i3.DiaryRepositoryImplementation());
    gh.factory<_i4.GetDiaryListUseCase>(
        () => _i4.GetDiaryListUseCase(gh<_i3.DiaryRepository>()));
    gh.factory<_i5.HomeCubit>(() => _i5.HomeCubit());
    gh.factory<_i6.LoginCubit>(() => _i6.LoginCubit());
    gh.factory<_i7.TaskFormCubit>(() => _i7.TaskFormCubit());
    gh.factory<_i8.AddNewDiaryEntryUseCase>(
        () => _i8.AddNewDiaryEntryUseCase(gh<_i3.DiaryRepository>()));
    gh.factory<_i9.DiaryListCubit>(() => _i9.DiaryListCubit(
          gh<_i4.GetDiaryListUseCase>(),
          gh<_i8.AddNewDiaryEntryUseCase>(),
        ));
    return this;
  }
}
