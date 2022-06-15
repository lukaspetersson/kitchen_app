import 'package:flutter/material.dart';

class RecipePage extends StatefulWidget {
  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: 50,
            child: const Center(child: Text('recipe A')),
          ),
          Container(
            height: 50,
            child: const Center(child: Text('recipe B')),
          ),
          Container(
            height: 50,
            child: const Center(child: Text('recipe C')),
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
