import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: _Dice(),
      ),
    ),
  );
}

class _DicePage extends State<_Dice> {
  int leftdice = Random().nextInt(6) + 1;
  int rightdice = Random().nextInt(6) + 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    leftdice = Random().nextInt(6) + 1;
                    rightdice = Random().nextInt(6) + 1;

                    print("left $leftdice");
                  });
                },
                child: Image.asset("images/dice$leftdice.png"),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("images/dice$rightdice.png"),
            ))
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "You",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              "System",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        )
      ],
    );
  }
}

class _Dice extends StatefulWidget {
  const _Dice({Key? key}) : super(key: key);

  @override
  State<_Dice> createState() => _DicePage();
}
