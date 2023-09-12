import 'package:flutter/material.dart';

class MyProductPage extends StatelessWidget {
  const MyProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text("My Product", style: Theme.of(context).textTheme.titleLarge),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: const Text("sdjasd"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.check_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.heart_broken_outlined), label: "Likes"),
        BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Shops"),
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
      ]),
    );
  }
}
