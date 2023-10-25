// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dailyx/presentation/pages/control_panel/cubit/control_panel_cubit.dart'
    as _i3;
import 'package:dailyx/presentation/pages/login/cubit/login_cubit.dart' as _i4;
import 'package:dailyx/presentation/pages/task_form/cubit/task_form_cubit.dart'
    as _i5;
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
    gh.factory<_i3.ControlPanelCubit>(() => _i3.ControlPanelCubit());
    gh.factory<_i4.LoginCubit>(() => _i4.LoginCubit());
    gh.factory<_i5.TaskFormCubit>(() => _i5.TaskFormCubit());
    return this;
  }
}
