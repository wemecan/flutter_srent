import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_srent/config/global.dart';
import 'package:flutter_srent/common/utils/sq_color.dart';
import 'package:flutter_srent/page/splash_screen.dart';

import 'common/router/routers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp() {
    final router = Router();
    Routers.configureRoutes(router);
    Global.router = router;
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Global.router.generator,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: SplashView(),
    );
  }
}
