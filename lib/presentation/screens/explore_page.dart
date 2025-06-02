import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  void initState() {
    print('Khoi tao ExplorePage');
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Explore')),
        body: const Center(
          child: Text(
            'This is Explore Page',
            style: TextStyle(fontSize: 20),
          ),
        ),
      );
}
