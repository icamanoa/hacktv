import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:hacktv/src/models/movie.dart';
import 'package:hacktv/src/screens/category_screen.dart';
import 'package:hacktv/src/screens/movie_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(
            Icons.menu,
            color: Colors.black45,
          ),
          title: Text(
            'Hack TV'.toUpperCase(),
            style: Theme.of(context).textTheme.caption!.copyWith(
                  color: Colors.black45,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'muli',
                ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 15),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/logo.png'),
              ),
            ),
          ],
        ),
        body: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CarouselSlider.builder(
                      itemCount: movies.length,
                      itemBuilder: (BuildContext context, int index, _) {
                        Movie movie = movies[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    //MovieDetailScreen(movie: movie),
                                    MovieScreen(),
                              ),
                            );
                          },
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: <Widget>[
                              ClipRRect(
                                child: Image.network(
                                  //'https://image.tmdb.org/t/p/original/${movie.backdropPath}',
                                  '${movie.imagemin}',
                                  height:
                                      MediaQuery.of(context).size.height / 3,
                                  width: MediaQuery.of(context).size.width,
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  bottom: 15,
                                  left: 15,
                                ),
                                child: Text(
                                  movie.title.toUpperCase(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    fontFamily: 'muli',
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      options: CarouselOptions(
                        enableInfiniteScroll: true,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 2),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        pauseAutoPlayOnTouch: true,
                        viewportFraction: 0.8,
                        enlargeCenterPage: true,
                      ),
                    ),

//Inicio
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 12,
                          ),
                          BuildWidgetCategory(),
                          Text(
                            'Trending persons on this week'.toUpperCase(),
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black45,
                              fontFamily: 'muli',
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                height: 250,
                                child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: movies.length,
                                  separatorBuilder: (context, index) =>
                                      VerticalDivider(
                                    color: Colors.transparent,
                                    width: 5,
                                  ),
                                  itemBuilder: (context, index) {
                                    Movie movie = movies[index];
                                    return Expanded(
                                      child: Column(
                                        children: <Widget>[
                                          Card(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                            elevation: 3,
                                            child: ClipRRect(
                                              child: Image.network(
                                                '${movie.imagemin}',
                                                height: 150,
                                                width: 100,
                                                fit: BoxFit.cover,
                                                //'https://image.tmdb.org/t/p/w200${person.profilePath}',
                                                /* imageBuilder:
                                                    (context, imageProvider) {
                                                  return Container(
                                                    width: 80,
                                                    height: 80,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(100),
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
                                          Container(
                                            child: Center(
                                              child: Text(
                                                movie.title.toUpperCase(),
                                                style: TextStyle(
                                                  color: Colors.black45,
                                                  fontSize: 12,
                                                  fontFamily: 'muli',
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Center(
                                              child: Text(
                                                movie.year
                                                    .toString()
                                                    .toUpperCase(),
                                                style: TextStyle(
                                                  color: Colors.black45,
                                                  fontSize: 12,
                                                  fontFamily: 'muli',
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

//Fin
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
