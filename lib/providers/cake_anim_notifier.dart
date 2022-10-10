import 'package:flutter/cupertino.dart';

class cake_anim_notifier with ChangeNotifier{

  String _cake_anim_type = 'assets/cake_base.riv';

  String get cake_anim_type => _cake_anim_type;


  void setanim(int type) {

    if(type == 0)
      this._cake_anim_type = 'assets/cake_base.riv';

    else
      this._cake_anim_type = "assets/cream.riv";


    notifyListeners();

  }
}