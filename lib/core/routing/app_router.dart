import 'package:auto_route/auto_route.dart';
import 'package:dailyx/presentation/pages/control_panel/control_panel_page.dart';

part 'app_router.gr.dart';            
              
@AutoRouterConfig()      
class AppRouter extends _$AppRouter {      
    
  @override      
  List<AutoRoute> get routes => [      
    AutoRoute(page: ControlPanelRoute.page, initial: true, path: '/'),    
  ];
}   