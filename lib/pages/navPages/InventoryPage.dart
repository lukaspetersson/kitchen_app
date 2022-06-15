import 'package:flutter/material.dart';

class InventoryPage extends StatefulWidget {
  @override
  State<InventoryPage> createState() => _InventoryPageState();
}

class _InventoryPageState extends State<InventoryPage> {
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
