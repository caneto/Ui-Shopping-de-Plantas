import 'package:flutter/material.dart';
import 'package:uishoppingdepantas/home_screen.dart';

class BemVindoScreen extends StatelessWidget {
  const BemVindoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 420,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                image: DecorationImage(
                    image: AssetImage('assets/welcome.jpg'),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(height: 35,),
          const Text(
            'Bem Vindo',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
          ),
          Text(
            'Paisagismo ao seu redor \ncom plantas exóticas',
            style: TextStyle(fontSize: 16, color: Colors.grey.shade400),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  backgroundColor: const Color(0xff16182c),
                  padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20)
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()));
              },
              child: const Text(
                'Proximo',
                style: TextStyle(fontSize: 20),
              ))
        ],
      ),
    );
  }
}