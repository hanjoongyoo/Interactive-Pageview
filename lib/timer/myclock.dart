import 'package:flutter/material.dart';

class MyClock extends StatefulWidget {
  const MyClock({Key? key}) : super(key: key);

  @override
  State<MyClock> createState() => _MyClockState();
}

class _MyClockState extends State<MyClock> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200, height: 350,
      color: Colors.brown[400],
    );
  }
}
