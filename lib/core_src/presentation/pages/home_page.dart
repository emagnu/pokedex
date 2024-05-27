//  //  ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//  Import FILES
import '../providers/home_page_provider.dart';
//  //  ///

// class HomePage extends StatelessWidget {
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homePageController = ref.watch(homePageControllerProvider.notifier);
    final homePageData = ref.watch(homePageControllerProvider);
    //final _homePageController.fetchPokemons();

    return Scaffold(
      // appBar: AppBar(title: const Text('Home Page'),),
      body: _buildUI(context),
    );
  }

  Widget _buildUI(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width * 0.02),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _allPokemonsList(context),
            ],
          ),
        ),
      ),
    );
  } //  End of _buildUI

  Widget _allPokemonsList(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        children: <Widget>[
          const Text(
            'All Pokemons',
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).height * 0.60,
            child: ListView.builder(
              itemCount: 30,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
            ),
          )
        ],
      ),
    );
  }

//
}  // End of HomeaPage()
