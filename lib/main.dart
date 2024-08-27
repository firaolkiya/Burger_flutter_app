import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/dependency_injection.dart';
import 'package:groceries/features/groceries/presentation/bloc/grocery_bloc.dart';
import 'package:groceries/features/groceries/presentation/pages/dashboard/dashboard_screen.dart';

void main() {
  init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<GroceryBloc>(),
      child: const MaterialApp(
        home: DashboardScreen(),
      ),
    );
  }
}
