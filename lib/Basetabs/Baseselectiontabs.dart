import 'package:custom_cakes/cakebaseitem/data/basedetailslist.dart';
import 'package:custom_cakes/widgets/itemwidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class baseselectiontabs extends StatefulWidget {
  final Widget? child;

  baseselectiontabs({Key? key, this.child}) : super(key: key);

  _HomeTopChartsTabsState createState() => _HomeTopChartsTabsState();
}

class _HomeTopChartsTabsState extends State<baseselectiontabs> {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: MasonryGridView.builder(
        gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemCount: showcases.length,
        itemBuilder: (context, index){
          return itemwidgets(showcase: showcases[index], pos_num: index);
        },

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