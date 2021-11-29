import 'package:flutter/material.dart';
import 'package:hacktv/src/models/state.dart';
import 'package:hacktv/src/styles/constants.dart';

class ItemPost extends StatelessWidget {
  final StateList state;
  //final VoidCallback press;
  const ItemPost({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //onTap: press,
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
                tag: "${state.author}",
                child: Image.asset(state.image),
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
                    state.author,
                    style: TextStyle(
                        color: kTextLightColor, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "(${state.content})",
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
