import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const firstPage = '/';


  static final router = GoRouter(
    routes: [
      GoRoute(
        path: firstPage,
        builder: (context, state) => const SplashView(),
      ),
    ],
  );
}
