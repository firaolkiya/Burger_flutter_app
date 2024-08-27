import 'package:dartz/dartz.dart';
import 'package:groceries/features/groceries/data/model/grocery_model.dart';

import '../../../../../core/error/failure.dart';

abstract class GroceryRemoteDataSource {
  Future<Either<Failure,List<GroceryModel>>> getAllGloceries();
  Future<Either<Failure,void>> addToCart();
}