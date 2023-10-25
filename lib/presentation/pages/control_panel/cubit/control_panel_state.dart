part of 'control_panel_cubit.dart';

@freezed
class ControlPanelState with _$ControlPanelState{
  const factory ControlPanelState.loading() = _Loading;
  const factory ControlPanelState.failed(String message) = _Failed;
  const factory ControlPanelState.success(List<String> toDos) = _Success;
}