import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class EndStartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/My_Post_1.png"),
            fit: BoxFit.fill,
          ),
        ),

      /*  alignment: Alignment.center,
        child: Image.asset("assets/images/My_Post.png",
        ),
        padding: const EdgeInsets.all(8.0),*/
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.login),label: "Iniciar Sesión"),//0
        BottomNavigationBarItem(icon: Icon(Icons.app_registration),label: "Registrarse"),//1
        ],
      ),
    );

    /*return Image(
        image: AssetImage("assets/images/My_Post.png"),
        fit: BoxFit.fill,
    );*/

  }

}