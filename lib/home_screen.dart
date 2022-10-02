import 'package:flutter/material.dart';
import 'package:uishoppingdepantas/menu_card.dart';
import 'package:uishoppingdepantas/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String plant = 'assets/1.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        toolbarHeight: 100,
        leadingWidth: 0,
        centerTitle: false,
        title: const ListTile(
          title: Text(
            'Verde',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
          subtitle: Text('Todo o espaço ao seu redor'),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag_outlined),
            color: Colors.black,
            iconSize: 40,
          )
        ],
      ),
      body: Row(
        children: [
          // menu card
          Container(
            width: 105,
            height: MediaQuery.of(context).size.height - 168.2,
            decoration: const BoxDecoration(
                color: Color(0xfff6f4ff),
                borderRadius: BorderRadius.only(topRight: Radius.circular(40))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MenuCard(
                  icondata: const Icon(Icons.spa),
                  text: 'Interior',
                ),
                MenuCard(
                  icondata: const Icon(Icons.grass),
                  text: 'Ar livre',
                ),
                MenuCard(
                  icondata: const Icon(Icons.park),
                  text: 'Jardim',
                ),
                MenuCard(
                  icondata: const Icon(Icons.apartment),
                  text: 'Excritorio',
                )
              ],
            ),
          ),
          Container(
            height: 600,
            width: MediaQuery.of(context).size.width - 105,
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  if(index==2) {
                    plant = 'assets/1.png';
                  } else if(index==1) {
                    plant = 'assets/2.png';
                  } else if(index==0) {
                    plant = 'assets/1.png';
                  }
                  return ProductCard(plants: plant,);
                }),
          )
        ],
      ),
    );
  }
}