import 'package:flutter/material.dart';

class Fifteenscreen extends StatefulWidget {
  const Fifteenscreen({super.key});

  @override
  State<Fifteenscreen> createState() => _FifteenscreenState();
}

class _FifteenscreenState extends State<Fifteenscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Center(
                child: Text(
              '15',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
            )),
    );
  }
}