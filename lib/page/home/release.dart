import 'package:flutter/material.dart';

class ReleaseView extends StatefulWidget {
  @override
  _ReleaseViewState createState() => _ReleaseViewState();
}

class _ReleaseViewState extends State<ReleaseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("发布"),
      ),
      body: Container(
        child: Text("发布"),
      ),
    );
  }
}
