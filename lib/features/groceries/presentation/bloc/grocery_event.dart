part of 'grocery_bloc.dart';

sealed class GroceryEvent extends Equatable {
  const GroceryEvent();

  @override
  List<Object> get props => [];
}


final class LoadedAllGroceryEvent extends GroceryEvent{}

final class AddToCartEvent extends GroceryEvent{
  final GroceryEntity groceryEntity;

  const AddToCartEvent({required this.groceryEntity});}