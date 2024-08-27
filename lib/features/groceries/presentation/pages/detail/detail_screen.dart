import 'package:flutter/material.dart';
import 'package:groceries/features/groceries/domain/entities/grocery_entity.dart';
import 'package:groceries/features/groceries/presentation/pages/basket/my_basket.dart';
import 'package:groceries/features/groceries/presentation/widget/write_text.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.groceryEntity});
  final GroceryEntity groceryEntity;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Image(
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                  image: NetworkImage(groceryEntity.imageUrl),
                  height: 300,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                  
                  writeText(
                      text: groceryEntity.title,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  Row(children: [
                    writeText(text: '€ 50',crossed: true),
                    const SizedBox(
                      width: 10,
                    ),
                    writeText(text: '€ 100', color: Colors.red)
                  ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      writeText(
                          text: '4.9', fontSize: 18, fontWeight: FontWeight.bold),
                      const SizedBox(
                        width: 10,
                      ),
                      writeText(text: '(1.25)'),
                      const Expanded(
                          child: SizedBox(
                        height: 20,
                      )),
                      writeText(text: 'See all Review',underline: true),
                    ],
                  ),
                  writeText(
                      text:groceryEntity.description
                          ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    writeText(text: 'see more',underline: true),
                  ],),
                  writeText(
                      text: 'Additional Option',
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  Row(
                    children: [
                      writeText(text: 'Add Cheese', fontSize: 17),
                      const Expanded(
                          child: SizedBox(
                        height: 20,
                      )),
                      writeText(text: '+ £0.50'),
                      Checkbox(
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(6)),
                          value: false,
                          onChanged: (value) {})
                    ],
                  ),
                  Row(
                    children: [
                      writeText(text: 'Add Meat', fontSize: 17),
                      const Expanded(
                          child: SizedBox(
                        height: 20,
                      )),
                      writeText(text: '+ £0.50'),
                      Checkbox(
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(6)),
                          value: false,
                          onChanged: (value) {})
                    ],
                  ),
                  Row(
                    children: [
                      writeText(text: 'Add Bacon', fontSize: 17),
                      const Expanded(
                          child: SizedBox(
                        height: 20,
                      )),
                      writeText(text: '+ £0.50'),
                      Checkbox(
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(6)),
                          value: false,
                          onChanged: (value) {})
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        writeText(
                            text: '-', fontSize: 40, fontWeight: FontWeight.w800),
                        const SizedBox(
                          width: 10,
                        ),
                        writeText(
                            text: '1', fontSize: 25, fontWeight: FontWeight.w800),
                        const SizedBox(
                          width: 10,
                        ),
                        writeText(
                            text: '+', fontSize: 40, fontWeight: FontWeight.w800),
                        const Expanded(
                            child: SizedBox(
                          height: 10,
                        )),
                        FilledButton(
                          style: FilledButton.styleFrom(
                            backgroundColor: Colors.red.shade300
                          ),
                            onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder:(context) => MyBasket(),));
                            },
                            child: Row(
                              children: [
                                const Icon(Icons.shopping_basket_sharp),
                                const SizedBox(
                                  width: 10,
                                ),
                                writeText(text: 'Add to Basket'),
                              ],
                            ))
                      ],
                    ),
                  )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
              top: 35,
              left: 20,

              child: InkWell(
                onTap: (){
                  Navigator.of(context).pop();
                  },
                child: CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 133, 124, 124),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ))),
              )),
          Positioned(
              top: 200,
              left: MediaQuery.of(context).size.width - 100,
              child: const CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 248, 245, 245),
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.orange,
                  ))),
        ],
      ),
    );
  }
}
