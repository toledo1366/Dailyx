import 'package:bloc/bloc.dart';

part 'state_base.dart';

abstract class CubitBase<State> extends Cubit<State>{
  CubitBase(State state) : super(state);

  // @override
  // Future<void> close() async {
  //   await AppLogger.debug("$this closed");

  //   return super.close();
  // }

}