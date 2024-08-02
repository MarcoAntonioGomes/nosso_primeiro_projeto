

import 'package:flutter/material.dart';

class  MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.red,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.orange,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.yellow,
              height: 100,
              width: 100,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.green,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.blue,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.blueAccent,
              height:100,
              width: 100,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              color: Colors.purple,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.pink,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.white,
              height: 100,
              width: 100,
            )
          ],
        ),
      ],
    );
  }
}
