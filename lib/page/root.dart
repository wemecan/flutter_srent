import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_srent/common/utils/sq_color.dart';
import 'package:flutter_srent/common/utils/toast_utils.dart';
import 'package:flutter_srent/page/home/index.dart';
import 'package:flutter_srent/page/home/release.dart';

import 'home/message.dart';
import 'home/mine.dart';

class RootView extends StatefulWidget {
  @override
  _RootViewState createState() => _RootViewState();
}

class _RootViewState extends State<RootView>
    with SingleTickerProviderStateMixin {
  int _tabIndex = 0;
  List<Image> _tabImages = [
    Image.asset('img/home.png', width: 24, height: 24),
    Image.asset('img/release.png', width: 24, height: 24),
    Image.asset('img/message.png', width: 24, height: 24),
    Image.asset('img/we.png', width: 24, height: 24),
  ];
  List<Image> _tabSelectedImages = [
    Image.asset('img/home_selected.png', width: 24, height: 24),
    Image.asset('img/release_selected.png', width: 24, height: 24),
    Image.asset('img/message_selected.png', width: 24, height: 24),
    Image.asset('img/we_selected.png', width: 24, height: 24),
  ];
  DateTime _lastClickTime;

  @override
  void initState() {
    super.initState();
  }

  Image getTabIcon(int index) {
    if (index == _tabIndex) {
      return _tabSelectedImages[index];
    } else {
      return _tabImages[index];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        child: IndexedStack(
          children: <Widget>[
            IndexView(),
            ReleaseView(),
            MessageView(),
            MineView(),
          ],
          index: _tabIndex,
        ),
        onWillPop: () async {
          if (_lastClickTime == null ||
              DateTime.now().difference(_lastClickTime) >
                  Duration(seconds: 1)) {
            _lastClickTime = DateTime.now();
            ToastUtils.showToast("再次点击退出");
            return false;
          }
          return true;
        },
      ),
      bottomNavigationBar: CupertinoTabBar(
        backgroundColor: Colors.white,
        activeColor: SQColor.primary,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: getTabIcon(0), title: Text('首页')),
          BottomNavigationBarItem(icon: getTabIcon(1), title: Text('发布')),
          BottomNavigationBarItem(icon: getTabIcon(2), title: Text('消息')),
          BottomNavigationBarItem(icon: getTabIcon(3), title: Text('我的')),
        ],
        currentIndex: _tabIndex,
        onTap: (index) {
          setState(() {
            _tabIndex = index;
          });
        },
      ),
    );
  }
}
