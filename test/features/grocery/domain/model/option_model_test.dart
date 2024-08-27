import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/features/groceries/data/model/grocery_model.dart';
import 'package:groceries/features/groceries/data/model/option_model.dart';
import 'package:groceries/features/groceries/domain/entities/grocery_entity.dart';

void main() {
  
  final dummyJson = {
      "id": "66be460f71fccd1506882d24",
      "title": "Chicken Burger",
      "imageUrl": "https://res.cloudinary.com/g5-mobile-track/image/upload/v1723747446/assessment/xhvgqvpt7pghwaeqnids.jpg",
      "rating": 4.9,
      "price": 11,
      "discount": 6,
      "description": "A delicious chicken burger served on a toasted bun with fresh lettuce, tomato slices, and mayonnaise. Juicy grilled chicken patty seasoned to perfection for a mouthwatering taste experience.",
      "options": [
        {
          "id": "66be474571fccd1506882d26",
          "name": "Add Cheese",
          "price": 0.5
        },
      
        
      ]
    };

  ///test from json 
  final List<OptionModel> dummyModel = [OptionModel(id: '66be474571fccd1506882d26', price: 0.5, name: 'Add Cheese')];
  final dummy = GroceryEntity(id:'66be460f71fccd1506882d24' , 
  title: 'Chicken Burger',
   imageUrl: 'https://res.cloudinary.com/g5-mobile-track/image/upload/v1723747446/assessment/xhvgqvpt7pghwaeqnids.jpg', 
   description: 'A delicious chicken burger served on a toasted bun with fresh lettuce, tomato slices, and mayonnaise. Juicy grilled chicken patty seasoned to perfection for a mouthwatering taste experience.', 
   rating: 4.9, price: 11, discount: 6, options: dummyModel );
  
  test('should return GroceryModel', () {
    final res = GroceryModel.fromJson(dummyJson);
    expect(res, dummy);
  },);

}