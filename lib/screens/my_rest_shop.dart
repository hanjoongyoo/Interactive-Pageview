import 'package:flutter/material.dart';

class MyRestShop extends StatefulWidget {
  const MyRestShop({Key? key, this.offSet, this.goLeft}) : super(key: key);
  final double? offSet;
  final goLeft;

  @override
  State<MyRestShop> createState() => _MyRestShopState();
}

class _MyRestShopState extends State<MyRestShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[200],
        elevation: 0,
        centerTitle: true,
        title: const Text('My Rest Shop'),
        leading: IconButton(
          onPressed: (){
            widget.goLeft();
          },
          icon: const Icon(Icons.arrow_back),
          iconSize: (30 * (widget.offSet!-1)).abs(),
        ),
      ),
      body: Container(
        color: Colors.brown[200],
      ),
    );
  }
}
