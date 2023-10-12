import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../cubit_base.dart';

part 'control_panel_cubit.freezed.dart';
part 'control_panel_state.dart';

@injectable
class ControlPanelCubit extends CubitBase<ControlPanelState>{
  ControlPanelCubit() : super(const ControlPanelState.loading());
  
}