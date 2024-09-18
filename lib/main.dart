import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:developer' as kh;

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 115, 51, 151),
      body: RollDice(),
    ),
  ));
}

var imgDic = 'dice-images/dice-1.png';

class RollDice extends StatefulWidget {
  const RollDice({super.key});

// ignore: non_constant_identifier_names

  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  void roll() {
    int i = Random().nextInt(6) + 1;
    setState(() {
      imgDic = 'dice-images/dice-$i.png';
    });
    kh.log('Clicked!');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        // const SizedBox(
        //   height: 40.0,
        // ),
        Image.asset(
          imgDic,
          width: 300.0,
        ),
        ElevatedButton.icon(
            icon: const Icon(
              Icons.casino,
              size: 30.0,
            ),
            onPressed: () {
              roll();
            },
            label: const Text(
              'Roll Dice!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            style: ElevatedButton.styleFrom(
              iconColor: const Color.fromARGB(255, 114, 51, 151),
            ))
      ]),
    );
  }
}
