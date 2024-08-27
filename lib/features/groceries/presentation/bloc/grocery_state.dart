part of 'grocery_bloc.dart';

sealed class GroceryState extends Equatable {
  const GroceryState();
  
  @override
  List<Object> get props => [];
}

final class GroceryInitial extends GroceryState {}


final class LoadedAllGroceryState extends GroceryState{
  final List<GroceryEntity> groceries;

  const LoadedAllGroceryState({required this.groceries});
}

final class LoadingState extends GroceryState{

}

final class FailedState extends GroceryState{
  final String message;

 const  FailedState({required this.message});
  
}