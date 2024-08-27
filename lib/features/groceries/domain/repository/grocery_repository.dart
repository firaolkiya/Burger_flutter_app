import 'package:dartz/dartz.dart';
import 'package:groceries/core/error/failure.dart';
import 'package:groceries/features/groceries/domain/entities/grocery_entity.dart';

abstract class GroceryRepository {
   Future<Either<Failure,List<GroceryEntity>>> getAllGloceries();
  Future<Either<Failure,void>> addToCart();

}