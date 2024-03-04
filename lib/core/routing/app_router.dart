import 'package:auto_route/auto_route.dart';
import '../../presentation/pages/control_panel/control_panel_page.dart';
import '../../presentation/pages/diary/diary_list_page.dart';
import '../../presentation/pages/diary/form/diary_form_page.dart';
import '../../presentation/pages/login/login_page.dart';
import '../../presentation/pages/task_form/task_form_page.dart';

part 'app_router.gr.dart';            
              
@AutoRouterConfig()      
class AppRouter extends _$AppRouter {      
    
  @override      
  List<AutoRoute> get routes => [
    AutoRoute(page: LoginRoute.page, initial: true, path: '/'),
    AutoRoute(page: ControlPanelRoute.page, path: '/control'),
    AutoRoute(page: TaskFormRoute.page, path: '/task-form'),
    AutoRoute(page: DiaryFormRoute.page, path: '/diary-form'),
    AutoRoute(page: DiaryListRoute.page, path: '/diary-list')
  ];
}   