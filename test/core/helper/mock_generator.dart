import 'package:groceries/features/groceries/data/data_source/remote_data_source/grocery_remote_data_source.dart';
import 'package:groceries/features/groceries/domain/repository/grocery_repository.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks(
  [
    GroceryRepository,
    GroceryRemoteDataSource,
  ]
)
void main() {
  
}