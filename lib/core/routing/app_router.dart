import 'package:dailyx/presentation/pages/diary/diary_page.dart';
import 'package:dailyx/presentation/pages/diary_editor/diary_editor_page.dart';
import 'package:dailyx/presentation/pages/main/main_page.dart';
import 'package:dailyx/presentation/pages/task_creation_form/task_creation_form_page.dart';
import 'package:go_router/go_router.dart';

import '../../presentation/pages/login/login_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/main',
      builder: (context, state) => const MainPage(),
    ),
    GoRoute(
      path: '/task_creation_form',
      builder: (context, state) => const TaskCreationFormPage(),
    ),
    GoRoute(
      path: '/diary_editor',
      builder: (context, state) {
        final selectedDate = state.extra as DateTime;

        return DiaryEditorPage(selectedDate: selectedDate);
      },
    ),
    GoRoute(
      path: '/diary_page',
      builder: (context, state) {
        final content = state.extra as String;

        return DiaryPage(content: content);
      },
    )
  ],
);