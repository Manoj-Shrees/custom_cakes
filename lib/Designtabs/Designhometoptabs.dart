import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'designbirthdayselectiontabs.dart';

class Designhometoptabs extends StatefulWidget {

  Designhometoptabs(this.colorVal);
int colorVal;

_HomeTopTabsState createState() => _HomeTopTabsState();
}

class _HomeTopTabsState extends State<Designhometoptabs> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 7);
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
      length:7,
      child: Scaffold(

        appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
         child: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            controller: _tabController,
            indicatorWeight: 1.0,
            indicatorColor: Colors.black,
            isScrollable: true,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: <Widget>[
              Tab(text: "Anniversary"),

              Tab(text: "baby shower"),

              Tab(text: "Birthday"),

              Tab(text: "Father's day"),

              Tab(text: "Mother's day"),

              Tab(text: "Wedding"),

              Tab(text: "Others"),
            ],
          ),
        ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[

            designbirthdayselectiontabs(),
            designbirthdayselectiontabs(),
            designbirthdayselectiontabs(),
            designbirthdayselectiontabs(),
            designbirthdayselectiontabs(),
            designbirthdayselectiontabs(),
            designbirthdayselectiontabs(),
          ],
        ),
      ),
    );
  }
}