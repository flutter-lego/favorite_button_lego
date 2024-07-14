import 'package:flutter/material.dart';

import '../../../../../../../../../../../main.dart';

class NewView extends StatefulWidget {
  const NewView(
      {super.key, this.isFavorite = false,
      this.notFavoriteWidget = const Icon(Icons.favorite_border),
      this.favoriteWidget = const Icon(Icons.favorite, color: Colors.red)});

  final Widget notFavoriteWidget;
  final Widget favoriteWidget;

  final bool isFavorite;

  @override
  State<NewView> createState() => _NewViewState();
}

class _NewViewState extends State<NewView> {
  @override
  Widget build(BuildContext context) {
    return (widget.isFavorite)
        ? widget.favoriteWidget
        : widget.notFavoriteWidget;
  }
}

main() async {
  return buildApp(
      home: Scaffold(
          body: NewView(
    // isFavorite: true,
  ).center()));
}
