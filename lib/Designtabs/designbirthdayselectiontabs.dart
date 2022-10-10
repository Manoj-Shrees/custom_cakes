import 'package:custom_cakes/cakebaseitem/data/designbirthdaydetailslist.dart';
import 'package:custom_cakes/widgets/designbirthdayitemswidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class designbirthdayselectiontabs extends StatefulWidget {
  final Widget? child;

  designbirthdayselectiontabs({Key? key, this.child}) : super(key: key);

  _HomeTopChartsTabsState createState() => _HomeTopChartsTabsState();
}

class _HomeTopChartsTabsState extends State<designbirthdayselectiontabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MasonryGridView.builder(
        gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            itemCount: designbirthdaydatalists.length,
            itemBuilder: (BuildContext context, int index) =>
                designbirthdayitemswidget(showcase: designbirthdaydatalists[index]),
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