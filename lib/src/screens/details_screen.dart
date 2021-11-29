import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:hacktv/src/styles/constants.dart';
import 'package:hacktv/src/models/movie.dart';
//import 'package:hacktv/src/styles/theme.dart';
import 'package:hacktv/src/widgets/body_details.dart';

class DetailsScreen extends StatelessWidget {
  final Movie movie;

  const DetailsScreen({Key? key, required this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          //image: NetworkImage(movie.imagemin),
          image: AssetImage('${movie.image}'),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: buildAppBar(context),
        body: Body(movie: movie),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Image.asset(
          'assets/images/logo.png',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      /* actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg"),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ], */
    );
  }
}
