
import 'package:flutter/material.dart';

class DetailImage extends StatelessWidget {
  const DetailImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
    
      children: [
        Image(
          width: double.infinity,
          image: AssetImage('asset/image/burger.jpeg'),
          height: 300,
          ),
          Positioned(
            top: 10,
            child: Icon(Icons.arrow_back))

      ],
    );
  }
}