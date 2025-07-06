part of 'route_import_part.dart';

class RouteConfig {
  GoRouter goRouter = GoRouter(
    initialLocation: RouteName.splashScreen, /// Start at the splash screen
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
        path: RouteName.successScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideBottomToTop,
            child: SuccessScreen(),
          );
        },
      ),
  GoRoute(
        path: RouteName.completeProfileScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideBottomToTop,
            child: CompleteProfileScreen(),
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



        GoRoute(
        path: RouteName.loginScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: LoginScreen(),
          );
        },
      ),



        GoRoute(
        path: RouteName.otpScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: OtpScreen(),
          );
        },
      ),
    ],
  );
}
