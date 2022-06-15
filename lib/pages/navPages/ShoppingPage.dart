import 'package:flutter/material.dart';

class ShoppingPage extends StatefulWidget {
  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 50,
            child: const Center(child: Text('item 1')),
          ),
          Container(
            height: 50,
            child: const Center(child: Text('item 2')),
          ),
          Container(
            height: 50,
            child: const Center(child: Text('item 3')),
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Add item',
        child: const Icon(Icons.add),
      ),
    );
  }
}
