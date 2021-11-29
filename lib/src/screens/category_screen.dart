import 'dart:io';

//import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hacktv/src/models/movie.dart';
import 'package:hacktv/src/screens/movie_detail_screen.dart';

class BuildWidgetCategory extends StatefulWidget {
  final int selectedGenre;

  const BuildWidgetCategory({Key? key, this.selectedGenre = 28})
      : super(key: key);

  @override
  BuildWidgetCategoryState createState() => BuildWidgetCategoryState();
}

class BuildWidgetCategoryState extends State<BuildWidgetCategory> {
  late int selectedGenre;

  @override
  void initState() {
    super.initState();
    selectedGenre = widget.selectedGenre;
  }

  @override
  Widget build(BuildContext conte) {
    return Container(
      child: _buildGenre(context),
    );
  }

  Widget _buildGenre(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          /* Container(
            //height: 45,
            child: ListView.separated(
              separatorBuilder: (BuildContext context, int index) =>
                  VerticalDivider(
                color: Colors.transparent,
                width: 5,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: movies.length,
              itemBuilder: (context, index) {
                Movie movie = movies[index];
                return Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Movie movie = movies[index];
                          selectedGenre = movie.id;
                        });
                      },
                      child: Container(
                        //padding: EdgeInsets.all(10),
                        /* decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black45,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                              color: (movie.id == selectedGenre)
                                  ? Colors.black45
                                  : Colors.white,
                            ), */
                        child: Text(
                          movie.genders.toString().toUpperCase(),
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: (movie.id == selectedGenre)
                                ? Colors.white
                                : Colors.black45,
                            fontFamily: 'muli',
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ), */
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              'new playing'.toUpperCase(),
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black45,
                fontFamily: 'muli',
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 300,
            child: ListView.separated(
              separatorBuilder: (context, index) => VerticalDivider(
                color: Colors.transparent,
                width: 15,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: movies.length,
              itemBuilder: (context, index) {
                Movie movie = movies[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                MovieDetailScreen(movie: movie),
                          ),
                        );
                      },
                      child: ClipRRect(
                        child: Image.network(
                          movie.imagemin,
                          //fit: BoxFit.fitHeight,
                          //imageUrl:
                          //'https://image.tmdb.org/t/p/original/${movie.backdropPath}',
                          /* imageBuilder: (context, imageProvider) {
                            return Container(
                              width: 180,
                              height: 250,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                ),
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          }, */
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 180,
                      child: Text(
                        movie.title.toUpperCase(),
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'muli',
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 14,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 14,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 14,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 14,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 14,
                          ),
                          Text(
                            movie.rating.toString(),
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      );
    });
  }
}
