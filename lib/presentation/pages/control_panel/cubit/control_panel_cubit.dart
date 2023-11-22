import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';


part 'control_panel_cubit.freezed.dart';
part 'control_panel_state.dart';

@injectable
class ControlPanelCubit extends Cubit<ControlPanelState>{
  ControlPanelCubit() : super(const ControlPanelState.initialized());

  // List<String> initToDos() {
  //   List<String> toDos = [];
  //   toDos.add('Umyj siuraka');
  //   toDos.add('Wyszoruj pupę');

  //   return toDos;
  // }

  void initToDos() {
    emit(const ControlPanelState.loading());

    Future.delayed(Duration(seconds: 3));
    List<String> toDos = [];
    toDos.add('Umyj siuraka');
    toDos.add('Wyszoruj pupę');

    emit(ControlPanelState.success(toDos));
  }
  

}