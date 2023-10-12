import 'package:dailyx/core/locator/locator.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final di = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => di.init();