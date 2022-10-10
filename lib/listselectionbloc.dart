import 'package:flutter/foundation.dart';

class listselectionbloc extends ChangeNotifier {

  String _cakebaseselectiontypetxt = "strawberry";
  String get cakebaseselectiontypetxt => _cakebaseselectiontypetxt;

  setcakebaseselectiontypetxt(String s) {
    this._cakebaseselectiontypetxt = s;
    notifyListeners();
  }



}