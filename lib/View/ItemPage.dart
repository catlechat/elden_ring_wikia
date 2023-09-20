import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  final String itemName;

  ItemPage(this.itemName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(itemName),
      ),
      body: Center(
        child: Text('$itemName Page Content'),
      ),
    );
  }
}
