import 'package:groceries/features/groceries/domain/entities/option_entity.dart';

class OptionModel extends OptionEntity {
  OptionModel({required super.id, required super.price, required super.name});

  factory OptionModel.fromJson(Map<String, dynamic> js) {
    return OptionModel(
      id: js['id'],
      name: js['name'],
      price: js['price'],
    );
  }

  Map<String, dynamic>toJson(){
    return {
      'name': name,
      'id': id,
      'price': price
    };
  }
}
