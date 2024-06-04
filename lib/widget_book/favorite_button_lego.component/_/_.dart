import 'package:flutter/material.dart';

import '../../../../../../../../../../../main.dart';

class NewView extends StatefulWidget {
  const NewView({super.key, required this.isFavorite, this.size = 24.0});

  final bool isFavorite;
  final double size;

  @override
  State<NewView> createState() => _NewViewState();
}

class _NewViewState extends State<NewView> {
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
          body: NewView(
    isFavorite: true,
  ).center()));
}
