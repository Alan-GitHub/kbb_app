import 'package:flutter/material.dart';
import 'package:kbb_app/Base/TabbarManager.dart';
import 'package:provide/provide.dart';
import 'package:kbb_app/Base/TabbarManagerProvide.dart';

void main() {
  //Provider对象
  var provides = Providers();

  //生成自定义Provide
  var tabbarIndex = TabbarManagerProvide();

  //注册自定义Provide
  provides
  ..provide(Provider<TabbarManagerProvide>.value(tabbarIndex));

  //进入App主流程
  runApp(ProviderNode(child: KbbApp(), providers: provides));
}

class KbbApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.greenAccent
      ),
      home: TabbarManager(),
    );
  }
}

