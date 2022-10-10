import 'package:custom_cakes/cakebaseitem/data/creamdetailslist.dart';
import 'package:custom_cakes/widgets/creamitemswidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class creamselectiontabs extends StatefulWidget {
  final Widget? child;

  creamselectiontabs({Key? key,this.child}) : super(key: key);

  _HomeTopChartsTabsState createState() => _HomeTopChartsTabsState();
}

class _HomeTopChartsTabsState extends State<creamselectiontabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MasonryGridView.builder(
        gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            itemCount: creamdatalists.length,
            itemBuilder: (BuildContext context, int index) =>
                creamitemswidget(showcase: creamdatalists[index]),
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