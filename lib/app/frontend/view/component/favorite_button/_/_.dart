import 'package:flutter/material.dart';

import '../../../../../../../../../../../main.dart';

class FavoriteButtonView extends StatefulWidget {
  const FavoriteButtonView(
      {super.key, this.isFavorite = false,
      this.size = 24.0,
      this.notFavoriteWidget = const Icon(Icons.favorite_border),
      this.favoriteWidget = const Icon(Icons.favorite, color: Colors.red)});

  final Widget notFavoriteWidget;
  final Widget favoriteWidget;

  final bool isFavorite;
  final double size;

  @override
  State<FavoriteButtonView> createState() => _FavoriteButtonViewState();
}

class _FavoriteButtonViewState extends State<FavoriteButtonView> {
  @override
  Widget build(BuildContext context) {
    return (widget.isFavorite)
        ? Icon(
            Icons.favorite,
            color: Colors.red,
            size: widget.size,
          )
        : Icon(
            Icons.favorite_border,
            size: widget.size,
          );
  }
}

main() async {
  return buildApp(
      home: Scaffold(
          body: FavoriteButtonView(
    // isFavorite: true,
  ).center()));
}
