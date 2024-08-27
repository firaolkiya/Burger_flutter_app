import 'package:groceries/core/converter.dart';

import '../../domain/entities/grocery_entity.dart';

class GroceryModel extends GroceryEntity{
  const GroceryModel({required super.id, required super.title, required super.imageUrl, required super.description, required super.rating, required super.price, required super.discount, required super.options});

  factory GroceryModel.fromJson(Map<String,dynamic>js){
    return GroceryModel(id: js['id'], title: js['title'], imageUrl: js['imageUrl'], description: js['description'], rating: js['rating'], price: js['price'] , discount: js['discount'] , options: JsonToOptionConvereter(js['options']));
  }
}