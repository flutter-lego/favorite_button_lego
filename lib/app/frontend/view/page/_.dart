import 'package:flutter/material.dart';
import 'package:june/june.dart';

import '../../../../main.dart';
import '../component/favorite_button/_/_.dart';
import 'vm.dart';

class TestNote extends StatefulWidget {
  const TestNote({super.key});

  @override
  State<TestNote> createState() => _TestNoteState();
}

class _TestNoteState extends State<TestNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: JuneBuilder(() => FavoriteButtonVM(),
          builder: (vmFavoriteButton) => FavoriteButtonView(isFavorite: vmFavoriteButton.isFavorite).center()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var state = June.getState(() => FavoriteButtonVM());
          state.isFavorite = !state.isFavorite;
          state.setState();
        },
        child: Icon(Icons.add),
      ));
  }
}

main() async {
  return buildApp(home: TestNote());
}
