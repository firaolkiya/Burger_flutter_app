import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:groceries/core/constant.dart';
import 'package:groceries/core/error/failure.dart';
import 'package:groceries/features/groceries/data/data_source/remote_data_source/grocery_remote_data_source.dart';
import 'package:groceries/features/groceries/data/model/grocery_model.dart';
import 'package:http/http.dart' as http;

class GroceryRemoteDataSourceImpl  extends GroceryRemoteDataSource{
 final http.Client client;

  GroceryRemoteDataSourceImpl({required this.client});
  @override
  Future<Either<Failure, void>> addToCart() {
    // TODO: implement addToCart
    throw UnimplementedError();
  }

 @override
Future<Either<Failure, List<GroceryModel>>> getAllGloceries() async {
  try {
    final response = await client.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      final Map<String, dynamic> decodedData = json.decode(response.body);
      final List<dynamic> burgerData = decodedData['data'];
      final List<GroceryModel> burgers = burgerData
          .map((item){
            return GroceryModel.fromJson(item);})
          .toList();
      return Right(burgers);
    } else {
      return Left(Failure(message: 'Failed with status code: ${response.statusCode}'));
    }
  } catch (e) {
    return Left(Failure(message: e.toString()));
  }
}
}