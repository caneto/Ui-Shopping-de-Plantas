import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final String plants;

  const ProductCard({Key? key, required this.plants}) : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 100,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 200,
            height: 300,
            // color: Colors.grey.shade400,
          ),
          Positioned(
            top: 40,
            child: Container(
              width: 200,
              height: 230,
              decoration: BoxDecoration(
                  color: const Color(0xffcbf2d3),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Positioned(
            top: 0,
            child: Image.asset(
              widget.plants,
              width: 250,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: const Color(0xff16182c),
                  borderRadius: BorderRadius.circular(20)),
              child: const Icon(Icons.shopping_bag_outlined, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}