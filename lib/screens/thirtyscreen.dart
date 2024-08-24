import 'package:flutter/material.dart';

class Thirtyscreen extends StatefulWidget {
  const Thirtyscreen({super.key});

  @override
  State<Thirtyscreen> createState() => _ThirtyscreenState();
}

class _ThirtyscreenState extends State<Thirtyscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
                child: Text(
              '30',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
            ))
    );
  }
}