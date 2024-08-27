import 'package:flutter/material.dart';
import 'package:groceries/features/groceries/presentation/widget/write_text.dart';

Widget basketCard() {
  return Container(
    margin: EdgeInsets.all(10),
    child: Row(
      children: [
        const Image(
            height: 100,
            fit: BoxFit.fitHeight,
            image: AssetImage('asset/image/burger.jpeg')),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Column(
            children: [
              writeText(
                  text: 'Chicken Burger',
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              Row(
                children: [
                  writeText(text: '€ 50'),
                  const SizedBox(
                    width: 10,
                  ),
                  writeText(text: '€ 100', color: Colors.red)
                ],
              ),
              Row(
                children: [
                  writeText(text: '-', fontSize: 40, fontWeight: FontWeight.w800),
                  const SizedBox(
                    width: 10,
                  ),
                  writeText(text: '1', fontSize: 25, fontWeight: FontWeight.w800),
                  const SizedBox(
                    width: 10,
                  ),
                  writeText(text: '+', fontSize: 40, fontWeight: FontWeight.w800),
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}
