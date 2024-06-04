import 'package:flutter/material.dart';

import '../../../../../../../../../../../main.dart';

class FavoriteButtonView extends StatefulWidget {
  const FavoriteButtonView({super.key, required this.isFavorite, this.size = 24.0});

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
    isFavorite: true,
  ).center()));
}
