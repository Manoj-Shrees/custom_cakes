import 'package:custom_cakes/cakebaseitem/data/jamdetailslist.dart';
import 'package:custom_cakes/widgets/jamitemswidget.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class jamselectiontabs extends StatefulWidget {
  final Widget? child;

  jamselectiontabs({Key? key, this.child}) : super(key: key);

  _HomeTopChartsTabsState createState() => _HomeTopChartsTabsState();
}

class _HomeTopChartsTabsState extends State<jamselectiontabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MasonryGridView.builder(
    gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
    mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemCount: jamdatalists.length,
          itemBuilder: (BuildContext context, int index) =>
              jamitemswidget(showcase: jamdatalists[index]),
      ),
    );
  }

  Widget ImageContainer() {
    return Container(
      height: 200.0,
      child: Center(child: Text('base')),
    );
  }

}