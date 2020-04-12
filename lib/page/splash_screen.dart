import 'package:flutter/material.dart';
import 'package:flutter_srent/page/root.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));
    _animation = Tween(begin: 1.0, end: 1.0).animate(_controller);

    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => RootView()),
            (route) => route == null);
      }
    });
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
  	return new FadeTransition(
		  opacity: _animation,
		  child: new Image.asset(
				'img/launch_image.png',
			  scale: 2.0,
			  fit: BoxFit.cover,
		  ),
	  );
  }

  @override
  void dispose() {
  	_controller.dispose();
  	super.dispose();
  }
}
