import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../animationbloc.dart';
import '../cakebaseitem/model/basedatalist.dart';

class itemwidgets extends StatelessWidget {
  final Showcase showcase;
  final int pos_num ;

  const itemwidgets({
    required this.showcase,
    required this.pos_num,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var animationBloc = Provider.of<animationbloc>(context, listen: false);

    return  Bounceable(
    onTap: () {

      String animationtype = "";
      switch(pos_num)
      {
        case 0:
          setanimationtype(context, "butterscotch" , animationBloc);
          break;

        case 1:
          setanimationtype(context, "chocolate", animationBloc);
          break;

        case 2:
          setanimationtype(context, "strawberry", animationBloc);
          break;

        case 3:
          setanimationtype(context, "red velvet", animationBloc);
          break;

        case 4:
          setanimationtype(context, "vanilla", animationBloc);
          break;
      }


      print(animationtype);
      print(pos_num);
    },


        child: Container(

        padding: EdgeInsets.fromLTRB(1, 5, 1,2),
        
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child:
                      SvgPicture.asset(showcase.image, width: 80, height: 80),
                ),
              ],
            ),
            buildInfo(context),
          ],
        ),
     ),
   );
  }

  Widget buildInfo(BuildContext context) => Container(
    margin: EdgeInsets.symmetric(horizontal: 8),
        // handle your onTap here
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 2),
            Divider(color: Colors.black),
            Text(showcase.title,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                textAlign: TextAlign.center),
            SizedBox(height: 2),
          ],
        ),
      );



  void setanimationtype(BuildContext context , animationame , var animationBloc)
  {
    animationBloc.setanimationtypetxt(animationame);
  }
}