import 'package:flutter/material.dart';
import 'package:hacktv/src/models/movie.dart';

import 'package:hacktv/src/styles/constants.dart';

class MovieTitleWithImage extends StatelessWidget {
  const MovieTitleWithImage({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Movie Details",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            movie.title,
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: kDefaultPaddin),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Valoración\n",
                        style: TextStyle(color: Colors.white)),
                    TextSpan(
                      text: "${movie.rating}",
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(width: kDefaultPaddin),
              Expanded(
                child: Hero(
                  tag: "${movie.id}",
                  child: Image.network(
                    movie.imagemin,
                    fit: BoxFit.contain,
                    height: 300,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
