import 'package:dartz/dartz.dart';
import 'package:groceries/core/error/failure.dart';
import 'package:groceries/features/groceries/domain/entities/grocery_entity.dart';
import 'package:groceries/features/groceries/domain/repository/grocery_repository.dart';

class GetAllGloceryUsecase {
  final GroceryRepository gloceryRepository;

  GetAllGloceryUsecase({required this.gloceryRepository});
  Future<Either<Failure,List<GroceryEntity>>> execute(){
    return gloceryRepository.getAllGloceries();
  }
}