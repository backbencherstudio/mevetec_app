part of 'route_import_part.dart';

class RouteConfig {
  GoRouter goRouter = GoRouter(
    initialLocation: RouteName.profileScreen, /// Start at the splash screen
    routes: [
      GoRoute(
        path: RouteName.splashScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: SplashScreen(),
          );
        },
      ),
      GoRoute(
        path: RouteName.onboardingScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideBottomToTop,
            child: OnboardingScreen(),
          );
        },
      ),


       GoRoute(
        path: RouteName.profileScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: ProfileScreen(),
          );
        },
      ),

         GoRoute(
        path: RouteName.profileInfoScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: ProfileInfoScreen(),
          );
        },
      ),
    ],
  );
}
