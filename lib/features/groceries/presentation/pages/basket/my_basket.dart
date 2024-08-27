import 'package:flutter/material.dart';
import 'package:groceries/features/groceries/presentation/widget/basket_cald.dart';
import 'package:groceries/features/groceries/presentation/widget/write_text.dart';

class MyBasket extends StatelessWidget {
  const MyBasket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: writeText(text: 'My Basket',fontWeight: FontWeight.bold),
      ),
      body: ListView.builder(
        itemCount: 5,
        shrinkWrap: true,
        itemBuilder: (context, index) => basketCard(),),
    );
  }
}