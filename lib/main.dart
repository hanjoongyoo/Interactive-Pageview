import 'package:flutter/material.dart';

import 'screens/my_home.dart';
import 'screens/my_friend.dart';
import 'screens/my_rest_shop.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Cup Of Rest',
    home: MyApp(),
  ));
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final pageViewController = PageController(initialPage: 1);
  double offSet = 1;

  @override
  void initState() {
    super.initState();
    pageViewController.addListener(() {
      setState(() {
        offSet = pageViewController.page!;
      });
    });
  }

  void goLeft(){
    pageViewController.previousPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }

  void goRight(){
    pageViewController.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageViewController,
      children: [
        MyFriend(offSet: offSet, goRight: goRight),
        MyHome(offSet: offSet, goLeft: goLeft, goRight: goRight),
        MyRestShop(offSet: offSet, goLeft: goLeft),
      ],
    );
  }
}
