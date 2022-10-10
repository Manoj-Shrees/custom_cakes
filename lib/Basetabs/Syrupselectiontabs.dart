import 'package:custom_cakes/cakebaseitem/data/syrupdetailslist.dart';
import 'package:custom_cakes/widgets/syrupitemwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Syrupselectiontabs extends StatefulWidget {
  final Widget? child;

  Syrupselectiontabs({Key? key, this.child}) : super(key: key);

  _HomeTopChartsTabsState createState() => _HomeTopChartsTabsState();
}

class _HomeTopChartsTabsState extends State<Syrupselectiontabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  MasonryGridView.builder(
        gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemCount: syrupdatalists.length,
        itemBuilder: (BuildContext context, int index) =>
            syrupitemwidget(showcase: syrupdatalists[index]),
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
