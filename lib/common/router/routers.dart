import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_srent/common/router/router_handlers.dart';

class Routers {
  static String splash = "/splash";
  static String root = "/home";

  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(handlerFunc:
        (BuildContext context, Map<String, List<String>> parameters) {
      print("handler not found");
    });

    router.define(splash, handler: splashHandler);
    router.define(root, handler: rootHandler);
  }
}
