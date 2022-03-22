import 'package:flutter/material.dart';

class MyFriend extends StatefulWidget {
  const MyFriend({Key? key, this.offSet, this.goRight}) : super(key: key);
  final double? offSet;
  final goRight;

  @override
  State<MyFriend> createState() => _MyFriendState();
}

class _MyFriendState extends State<MyFriend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[200],
        elevation: 0,
        centerTitle: true,
        title: const Text('My Friends'),
        actions: [
          IconButton(
            onPressed: (){
              widget.goRight();
            },
            icon: Icon(Icons.arrow_forward),
            iconSize: (30 * (1-widget.offSet!)).abs(),
          ),
        ],
      ),
      body: Container(
        color: Colors.brown[200],
      ),
    );
  }
}
