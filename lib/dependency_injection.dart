import 'package:get_it/get_it.dart';
import 'package:groceries/core/device/network_info/network_info.dart';
import 'package:groceries/features/groceries/data/data_source/remote_data_source/grocery_remote_data_source.dart';
import 'package:groceries/features/groceries/data/data_source/remote_data_source/grocery_remote_data_source_impl.dart';
import 'package:groceries/features/groceries/data/repository/grocery_repository_impl.dart';
import 'package:groceries/features/groceries/domain/repository/grocery_repository.dart';
import 'package:groceries/features/groceries/domain/usecase/add_to_cart_usecase.dart';
import 'package:groceries/features/groceries/domain/usecase/get_all_grocery_usecase.dart';
import 'package:groceries/features/groceries/presentation/bloc/grocery_bloc.dart';
import 'package:http/http.dart' as http;
final sl = GetIt.instance;

Future<void>init()async{
  sl.registerLazySingleton<NetworkInfo>(()=>NetworkInfoImpl());
  sl.registerLazySingleton<http.Client>(()=>http.Client());

  sl.registerLazySingleton<GroceryRemoteDataSource>(()=>GroceryRemoteDataSourceImpl(client: sl()));

  sl.registerFactory<GroceryRepository>(()=>GroceryRepositoryImpl(networkInfo: sl(), remoteDataSource: sl()));

  sl.registerLazySingleton(()=>GetAllGloceryUsecase(gloceryRepository: sl()));
    sl.registerLazySingleton(()=>AddToCartUsecase(groceryRepository: sl()));

  sl.registerLazySingleton(()=>GroceryBloc(sl(), sl()));

}