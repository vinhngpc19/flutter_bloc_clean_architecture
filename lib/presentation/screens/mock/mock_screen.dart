import 'package:flutter/material.dart';

class MockScreen extends StatefulWidget {
  const MockScreen({super.key});

  @override
  State<MockScreen> createState() => _MockScreenState();
}

class _MockScreenState extends State<MockScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('This is mock screen'),
      ),
    );
  }
}
