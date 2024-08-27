import 'package:flutter/material.dart';
import 'package:groceries/features/groceries/domain/entities/grocery_entity.dart';
import 'package:groceries/features/groceries/presentation/widget/write_text.dart';

class ItemCard extends StatelessWidget {
  final GroceryEntity groceryEntity;
  const ItemCard({super.key, required this.onClick, required this.groceryEntity});
  final VoidCallback onClick;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){onClick();},
      child: Container(
        margin: const EdgeInsets.all(5),
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [const BoxShadow(blurRadius: 2,spreadRadius: 1,color: Color.fromARGB(255, 182, 175, 174))]
        ),
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Image(
                width: double.infinity,
                fit: BoxFit.fill,
                height: 150,
                image: NetworkImage(groceryEntity.imageUrl)),
              writeText(text: groceryEntity.title,fontSize: 20,fontWeight: FontWeight.bold),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  
                  const Icon(Icons.star,color: Colors.orange,),
                  const SizedBox(width: 10,),
                  writeText(text: '${groceryEntity.rating}',fontSize: 18,fontWeight: FontWeight.bold)
                ],
              ),
              Row(
                children: [
                  
                  writeText(text: '€ 50',crossed: true),
                  const SizedBox(width: 10,),
                  writeText(text: '€ ${groceryEntity.price}',color: Colors.red)
                ],
              )
      
            ],
          ),
      ),
    );
  }
}