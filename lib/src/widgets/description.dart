import 'package:flutter/material.dart';
import 'package:hacktv/src/models/movie.dart';

import 'package:hacktv/src/styles/constants.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        movie.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }
}
