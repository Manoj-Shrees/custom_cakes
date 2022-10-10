import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'creamselectiontabs.dart';
import 'jamselectiontabs.dart';

class Filllinghometoptabs extends StatefulWidget {

  Filllinghometoptabs(this.colorVal);
int colorVal;

_HomeTopTabsState createState() => _HomeTopTabsState();
}

class _HomeTopTabsState extends State<Filllinghometoptabs> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
    _tabController.addListener(_handleTabSelection);
  }
  void _handleTabSelection() {
    setState(() {
      //widget.colorVal= Colors.black;
    });
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:2,
      child: Scaffold(

        appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
         child: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            controller: _tabController,
            indicatorWeight: 1.0,
            indicatorColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: <Widget>[
              Tab(
                icon: SvgPicture.asset('assets/cake_cream.svg' , width: 30, height: 30, color: _tabController.index == 0
                    ?  Colors.black
                    : Colors.grey),
              ),
              Tab(
                icon:  SvgPicture.asset('assets/jam.svg', width: 30, height: 30 , color: _tabController.index == 1
                    ?  Colors.black
                    : Colors.grey),
              ),

            ],
          ),
        ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[

            creamselectiontabs(child: null,),
            jamselectiontabs(),



          ],
        ),
      ),
    );
  }
}