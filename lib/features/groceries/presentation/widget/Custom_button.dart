

import 'package:flutter/material.dart';

Widget customButton(String text,VoidCallback onPressed){
   return FilledButton(onPressed: (){onPressed();},
     style: FilledButton.styleFrom(
      backgroundColor: const Color.fromARGB(255,255, 99, 71),

     ),
    child: Text(text),);
}