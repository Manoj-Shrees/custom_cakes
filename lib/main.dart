import 'package:custom_cakes/providers/cake_anim_notifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'Basetabs/Basehometoptabs.dart';
import 'Designtabs/Designhometoptabs.dart';
import 'Fillingtabs/Filllinghometoptabs.dart';
import 'animationbloc.dart';
import 'homepage.dart';

void main() => runApp(
      ChangeNotifierProvider(
          create: (_) => cake_anim_notifier(),
          child: MyApp()
      )
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider<animationbloc>(
        create: (context) => animationbloc(),
        child: MyHomePage(),
      ),
    );

  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      minimumSize: Size(88, 36),
      padding: EdgeInsets.all(10.0),
    primary: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
    );

    final animationbloc animation_bloc = Provider.of<animationbloc>(context);
    // TODO: implement build
    return DefaultTabController(  // Added
      length: 3,  // Added
      initialIndex: 0, //Added
      child: Scaffold(
            appBar: AppBar(

              leading: new IconButton(
                icon: new Icon(Icons.arrow_back_ios, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: Text("Custom cakes"),
              centerTitle: true,

              actions: <Widget>[
              SvgPicture.asset('assets/info.svg' , color: Colors.white ,width: 30, height: 30 ),
              ],

            ),


            body: new Container(

              constraints: BoxConstraints.expand(),

              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,

              child: Column(

                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
              Container(
                height: 250.0,
                width: MediaQuery.of(context).size.width,
                child: homepage(),
                alignment: Alignment.topCenter,
              ),
              Container(
                color: Color(0x69696999),
                padding: const EdgeInsets.only(top: 10.0),
                margin: const EdgeInsets.only(top: 5.0),
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: TabBar(
                    indicatorColor: Colors.white,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: Colors.white),
                    tabs: [
                      Tab(
                        child: Container(
                            child: Align(
                                alignment: Alignment.center,
                                child: Text("Base"))),
                      ),
                      Tab(
                        child: Container(
                            child: Align(
                                alignment: Alignment.center,
                                child: Text("Filling"))),
                      ),

                          Tab(
                            child:Container(

                                child: Align(
                                    alignment: Alignment.center,
                                    child: Text( "Design"))
                            ),
                          )
                        ]
                    ),



                  ),

                  Container(
                    height: MediaQuery.of(context).size.height /2.5,
                    width: MediaQuery.of(context).size.width,

                    child: TabBarView(
                      children: <Widget>[

                        Basehometoptabs(0x00000000),
                        Filllinghometoptabs(0x00000000),
                        Designhometoptabs(0x00000000),

                      ],
                    ),

                  ),


              Container(
                padding: EdgeInsets.only(left:2.0, right:2.0 , bottom: 1.0),
                height: 40,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.bottomCenter,


                  child: Row(
                    children:[
                    Container(
                        alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.cyan, Colors.lightBlueAccent],
                            begin: FractionalOffset(0.0, 0.0),
                            end: FractionalOffset(0.5, 0.0),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp),cl
                      ),
                        child: SizedBox(
                          width: (MediaQuery.of(context).size.width/ 2) - 2,
                          child: TextButton(
                          style: flatButtonStyle,
                            child: Text('\$ 409' , style: TextStyle(
                          color: Colors.white,
                        )),
                        onPressed: (){
                          print('Proceed for preview');
                        },
                      ),

                        ),
                    ),


                      Container(
                        alignment: Alignment.bottomRight,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.blueGrey, Colors.black],
                              begin: FractionalOffset(0.0, 0.0),
                              end: FractionalOffset(0.5, 0.0),
                              stops: [0.0, 1.0],
                              tileMode: TileMode.clamp),
                        ),

                        child: SizedBox(
                          width: (MediaQuery.of(context).size.width/ 2) - 2,
                          child: TextButton(
                            style: flatButtonStyle,
                            child: Text('Next' , style: TextStyle(
                              color: Colors.white,
                            )),
                            onPressed: (){
                              print('Proceed for preview');
                            },
                          ),

                        ),
                      ),

                    ],



                ),

                ),

              ],

    ),


            ),


        ),

          );
  }

}
