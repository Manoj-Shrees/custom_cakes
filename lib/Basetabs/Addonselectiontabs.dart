import 'package:custom_cakes/cakebaseitem/data/addondetailslist.dart';
import 'package:custom_cakes/widgets/addonitemswidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Addonselectiontabs extends StatefulWidget {
  final Widget? child;

  Addonselectiontabs({Key? key, this.child}) : super(key: key);

  _HomeTopChartsTabsState createState() => _HomeTopChartsTabsState();
}

class _HomeTopChartsTabsState extends State<Addonselectiontabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MasonryGridView.builder(
        gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemCount: addondatalists.length,
        itemBuilder: (BuildContext context, int index) =>
            addonitemswidget(showcase: addondatalists[index]),
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