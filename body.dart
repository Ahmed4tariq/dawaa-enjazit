import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dawaa_app/models/favarte.dart';

import '../../../size_config.dart';
import 'favItem.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    var demofav;
    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: demofav.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Dismissible(
            key: Key(demofav[index].product.id.toString()),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              setState(() {
                demofav.removeAt(index);
              });
            },
            background: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xFFFFE6E6),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Spacer(),
                  SvgPicture.asset("assets/icons/Trash.svg"),
                ],
              ),
            ),
            child: favItem(favarte: demofav[index]),
          ),
        ),
      ),
    );
  }
}
