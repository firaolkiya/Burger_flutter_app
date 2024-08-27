import 'package:dartz/dartz.dart';
import 'package:groceries/core/device/network_info/network_info.dart';
import 'package:groceries/core/error/failure.dart';
import 'package:groceries/features/groceries/data/data_source/remote_data_source/grocery_remote_data_source.dart';
import 'package:groceries/features/groceries/domain/entities/grocery_entity.dart';
import 'package:groceries/features/groceries/domain/repository/grocery_repository.dart';

class GroceryRepositoryImpl extends GroceryRepository {
  final NetworkInfo networkInfo;
  final GroceryRemoteDataSource remoteDataSource;

  GroceryRepositoryImpl({required this.networkInfo, required this.remoteDataSource});
  @override
  Future<Either<Failure, void>> addToCart() {
    // TODO: implement addToCart
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<GroceryEntity>>> getAllGloceries() async{
    if(await networkInfo.isConnected){
      return remoteDataSource.getAllGloceries();
    }
    return Left(Failure(message: 'no connection'));
  }

}