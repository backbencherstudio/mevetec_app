part of 'route_import_part.dart';

class RouteConfig {
  GoRouter goRouter = GoRouter(
    initialLocation: RouteName.homeScreen, /// Start at the splash screen
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            BottomNavBar(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RouteName.homeScreen,
                builder: (context, state) => const HomeScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RouteName.locationScreen,
                builder: (context, state) => const Location(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RouteName.profileScreen,
                builder: (context, state) => const ProfileScreen(),
              ),
            ],
          ),
        ],
      ),
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
        path: RouteName.paymentMthdScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: PaymentMthdScreen(),
          );
        },
      ),
        GoRoute(
        path: RouteName.chargingActivityScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideBottomToTop,
            child: ChargingActivityScreen(),
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
        path: RouteName.addNewPaymentMthdScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: AddNewPaymentMthdScreen(),
          );
        },
      ),
  GoRoute(
        path: RouteName.savedPlaceScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: SavedPlaceScreen(),
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
       GoRoute(
        path: RouteName.qrScanner,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: QrScannerScreen(),
          );
        },
      ),
    ],
  );
}
