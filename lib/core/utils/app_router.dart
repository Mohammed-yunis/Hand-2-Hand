import 'package:go_router/go_router.dart';
import 'package:hand2hand/features/home/views/home_view.dart';
import 'package:hand2hand/features/on_boarding/views/on_boarding.dart';

import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const firstPage = '/';
  static const onBoarding = '/onBoarding';
  static const home='/home';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: firstPage,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: onBoarding,
        builder: (context, state) => const OnBoarding(),
      ),
      GoRoute(
        path: home,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
