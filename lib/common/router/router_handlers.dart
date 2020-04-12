import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_srent/page/root.dart';
import 'package:flutter_srent/page/splash_screen.dart';

var splashHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> parameters) {
  return SplashView();
});

var rootHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> parameters) {
  return RootView();
});
