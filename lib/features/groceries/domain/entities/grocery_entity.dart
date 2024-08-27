import 'package:equatable/equatable.dart';
import 'package:groceries/features/groceries/domain/entities/option_entity.dart';

class GroceryEntity extends Equatable{
  final String id,title,imageUrl,description;
  final dynamic rating,price;
  final dynamic discount;
  final List<OptionEntity> options;

  const GroceryEntity({required this.id, required this.title, required this.imageUrl, required this.description, required this.rating, required this.price, required this.discount, required this.options});
  @override
  List<Object?> get props => [id,title,imageUrl,description,rating,price,discount,options];

}