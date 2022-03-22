import 'package:flutter/material.dart';
import '../timer/myclock.dart';

class MyHome extends StatefulWidget {
  MyHome({Key? key, this.offSet, this.goLeft, this.goRight}) : super(key: key);
  final double? offSet;
  final goLeft;
  final goRight;

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[200],
        elevation: 0,
        centerTitle: true,
        title: const Text('Cafe Name'),
        leading: IconButton(
          onPressed: (){
            widget.goLeft();
          },
          icon: const Icon(Icons.arrow_back),
          iconSize: 30 * widget.offSet!,
        ),
        actions: [
          IconButton(
            onPressed: (){
              widget.goRight();
            },
            icon: const Icon(Icons.arrow_forward),
            iconSize: (30 * (2-widget.offSet!)).abs(),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.brown[200],
        ),
        child: const Center(
          child: MyClock(),
        ),
      ),
    );
  }
}
