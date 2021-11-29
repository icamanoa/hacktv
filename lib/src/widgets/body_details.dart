import 'package:flutter/material.dart';
import 'package:hacktv/src/styles/constants.dart';
import 'package:hacktv/src/models/movie.dart';

import 'year_and_gender.dart';
import 'description.dart';
import 'movie_title_with_image.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({Key? key, required this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.4),
                  padding: EdgeInsets.only(
                    top: size.height * 0.05,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      YearAndGender(movie: movie),
                      SizedBox(height: kDefaultPaddin / 2),
                      Description(movie: movie),
                      SizedBox(height: kDefaultPaddin / 2),
                      //CounterWithFavBtn(),
                      //SizedBox(height: kDefaultPaddin / 2),
                      //AddToCart(product: product)
                    ],
                  ),
                ),
                MovieTitleWithImage(movie: movie)
              ],
            ),
          )
        ],
      ),
    );
  }
}
