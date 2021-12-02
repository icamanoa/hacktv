import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:hacktv/src/widgets/body_status.dart';

class StatesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Image.asset("assets/images/back.png"),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
