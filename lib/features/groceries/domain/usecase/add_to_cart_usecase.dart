import 'package:dartz/dartz.dart';
import 'package:groceries/core/error/failure.dart';
import 'package:groceries/features/groceries/domain/repository/grocery_repository.dart';

class AddToCartUsecase {
  final GroceryRepository groceryRepository;

  AddToCartUsecase({required this.groceryRepository});

  Future<Either<Failure,void>> execute(){
    return groceryRepository.addToCart();
  }

}