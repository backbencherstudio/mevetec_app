import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mevetec_app/src/core/routes/route_import_part.dart';
import 'package:mevetec_app/src/core/theme/app_theme.dart';


Future<void> main() async {
  /// Ensure Flutter bindings are initialized before anything else
  WidgetsFlutterBinding.ensureInitialized();

  await ScreenUtil.ensureScreenSize();// Add this line.


  /// Run the app
  runApp(const ProviderScope(child: MyApp()));
  /// Set the system UI overlay style
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 947),
      minTextAdapt: true,
      builder: (context, child) => MaterialApp.router(
        title: 'Charging App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.darkTheme,
        routerConfig: RouteConfig().goRouter,
      ),
    );
  }
}
