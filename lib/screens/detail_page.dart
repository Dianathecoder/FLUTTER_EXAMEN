import 'package:flutter/material.dart';
import 'list_page.dart';

class DetailPage extends StatelessWidget {
  final ListPage item;
  final int index;
  final String text;

  const DetailPage(
      {super.key, required this.item, required this.index, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Text(
            item.name,
            style: const TextStyle(fontSize: 24),
          ),
        ],
      )),
    );
  }
}
