import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';


part 'home_cubit.freezed.dart';
part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState>{
  HomeCubit() : super(const HomeState.initialized());

  // List<String> initToDos() {
  //   List<String> toDos = [];
  //   toDos.add('Umyj siuraka');
  //   toDos.add('Wyszoruj pupę');

  //   return toDos;
  // }

  void initToDos() {
    emit(const HomeState.loading());

    Future.delayed(Duration(seconds: 3));
    List<String> toDos = [];
    // toDos.add('Umyj siuraka');
    // toDos.add('Wyszoruj pupę');

    emit(HomeState.success(toDos));
  }
  

}