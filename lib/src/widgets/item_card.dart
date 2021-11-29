import 'package:flutter/material.dart';
import 'package:hacktv/src/models/movie.dart';

import 'package:hacktv/src/styles/constants.dart';

class ItemCard extends StatelessWidget {
  final Movie movie;
  final VoidCallback press;
  const ItemCard({
    Key? key,
    required this.movie,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin / 4),
              // For  demo we use fixed height  and width
              // Now we dont need them
              //height: 140,
              //width: 140,
              decoration: BoxDecoration(
                //color: Colors.transparent,
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Hero(
                tag: "${movie.id}",
                child: Image.asset(movie.image),
              ),
            ),
          ),
          Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
                  child: Text(
                    // products is out demo list
                    movie.title,
                    style: TextStyle(
                        color: kTextLightColor, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "(${movie.year})",
                  style: TextStyle(fontWeight: FontWeight.normal),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
