import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/features/groceries/presentation/bloc/grocery_bloc.dart';
import 'package:groceries/features/groceries/presentation/pages/detail/detail_screen.dart';
import 'package:groceries/features/groceries/presentation/widget/item_card.dart';
import 'package:groceries/features/groceries/presentation/widget/write_text.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}


class _DashboardScreenState extends State<DashboardScreen> {

  @override
  void initState() {
    
    context.read<GroceryBloc>().add(LoadedAllGroceryEvent());

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<GroceryBloc, GroceryState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          if(state is FailedState){
            return Center(child: writeText(text: state.message),);
          }
          if(state is! LoadedAllGroceryState){
            return const Center(child: CircularProgressIndicator(),);
          }
          
          return Padding(
            padding: const EdgeInsets.only(
              right: 10,
              left: 10,
              top: 30,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(
                        height: 20,
                        width: 20,
                        image: AssetImage('asset/image/burger.jpeg')),
                    const SizedBox(
                      width: 10,
                    ),
                    writeText(
                        text: 'Burger',
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 228, 222, 222)
                          .withOpacity(0.6),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                      enabledBorder: InputBorder.none,
                      hintStyle: const TextStyle(fontWeight: FontWeight.w200),
                      hintText: 'search',
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: const Icon(Icons.tune),
                    ),
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                      itemCount: (state as LoadedAllGroceryState).groceries.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisExtent: 300, crossAxisCount: 2),
                      itemBuilder: (context, index) => ItemCard(
                            groceryEntity: state.groceries[index],
                            onClick: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>  DetailScreen(groceryEntity: state.groceries[index],),
                              ));
                            },
                          )),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
