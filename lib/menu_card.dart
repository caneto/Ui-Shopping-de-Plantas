import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  Icon icondata;
  final text;
  MenuCard({Key? key, required this.icondata, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [icondata, Text(text)],
      ),
    );
  }
}