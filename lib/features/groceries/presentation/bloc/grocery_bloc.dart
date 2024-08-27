import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:groceries/features/groceries/domain/entities/grocery_entity.dart';
import 'package:groceries/features/groceries/domain/usecase/add_to_cart_usecase.dart';
import 'package:groceries/features/groceries/domain/usecase/get_all_grocery_usecase.dart';

part 'grocery_event.dart';
part 'grocery_state.dart';

class GroceryBloc extends Bloc<GroceryEvent, GroceryState> {
  final AddToCartUsecase addToCartUsecase;
  final GetAllGloceryUsecase getAllGloceryUsecase;
  GroceryBloc(this.addToCartUsecase, this.getAllGloceryUsecase) : super(GroceryInitial()) {
    on<LoadedAllGroceryEvent>((event, emit) async{
      emit(LoadingState());
      final res = await getAllGloceryUsecase.execute();
      res.fold((error){
        emit(FailedState(message: error.message));
      }, (right){
        emit(LoadedAllGroceryState(groceries: right));
      });
    });
  }
}
