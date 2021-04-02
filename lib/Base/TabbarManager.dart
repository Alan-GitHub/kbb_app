import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kbb_app/Home/Main/Views/HomeMainPage.dart';
import 'package:kbb_app/Member/Main/Views/MemberMainPage.dart';
import 'package:kbb_app/Wallet/Main/Views/WalletMainPage.dart';
import 'package:kbb_app/My/Main/Views/MyMainPage.dart';
import 'package:provide/provide.dart';
import 'package:kbb_app/Base/TabbarManagerProvide.dart';

class TabbarManager extends StatelessWidget {
  //底部Tabbar栏
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), title: Text('首页')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.search), title: Text('会员')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.shopping_cart), title: Text('票夹')),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.profile_circled), title: Text('我的'))
  ];

  final List<Widget> tabBodies = [
    HomeMainPage(),
    MemberMainPage(),
    WalletMainPage(),
    MyMainPage()
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        orientation: Orientation.portrait,
        designSize: Size(375, 667),
        allowFontScaling: false);

    return Provide<TabbarManagerProvide>(
      builder: (context, child, val) {
        int tabbarIndex =
            Provide.value<TabbarManagerProvide>(context).tabbarIndex;
        return Scaffold(
          backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: tabbarIndex,
            items: bottomTabs,
            onTap: (index) {
              Provide.value<TabbarManagerProvide>(context).changeIndex(index);
            },
          ),
          body: IndexedStack(index: tabbarIndex, children: tabBodies),
        );
      },
    );
  }
}
