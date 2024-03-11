import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      drawer: const Drawer(),
    );
  }

  AppBar appbar() {
    return AppBar(
      title: const Text("Deneme"),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_bag_outlined),
        )
      ],
    );
  }
}
