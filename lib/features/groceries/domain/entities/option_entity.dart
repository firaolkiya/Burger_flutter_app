import 'package:equatable/equatable.dart';

class OptionEntity extends Equatable{

 final String id;
  final dynamic price;
  final String name;

  const OptionEntity({required this.id, required this.price, required this.name});

  @override
  List<Object?> get props => [id,name,price];

}