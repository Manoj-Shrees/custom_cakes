import 'package:custom_cakes/cakebaseitem/model/addondatalist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class addonitemswidget extends StatelessWidget {
  final addondatalist showcase;

  const addonitemswidget({
    required this.showcase,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(

    children: <Widget>[
          Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: SvgPicture.asset(showcase.image, width: 80, height: 80),
              ),
              Material(
                color: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(8)),
                ),
              )
            ],
          ),
          buildInfo(context),
        ],
  );

  Widget buildInfo(BuildContext context) => Container(
    margin: EdgeInsets.symmetric(horizontal: 8),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 2),
        Divider(
            color: Colors.black
        ),
        Text(showcase.title, style: TextStyle(fontWeight: FontWeight.bold) , textAlign: TextAlign.center),
        SizedBox(height: 2),
      ],
    ),
  );
}