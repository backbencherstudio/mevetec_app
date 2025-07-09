part of 'route_import_part.dart';

class RouteConfig {
  GoRouter goRouter = GoRouter(
    initialLocation: RouteName.splashScreen,

    /// Start at the splash screen
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
                path: RouteName.searchStation,
                builder: (context, state) => const SearchStation(),
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
        path: RouteName.paymentMethodScreen,
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
        path: RouteName.signUpScreen,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: SignUpScreen(),
          );
        },
      ),

      GoRoute(
        path: RouteName.addNewPaymentMethodScreen,
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
      GoRoute(
        path: RouteName.chargingPhase,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: ChargingPhaseScreen(),
          );
        },
      ),

      GoRoute(
        path: RouteName.allStationList,
        pageBuilder: (context, state) {
          return buildPageWithTransition(
            context: context,
            state: state,
            transitionType: PageTransitionType.slideRightToLeft,
            child: AllStationList(),
          );
        },
      ),

    ],
  );
}
