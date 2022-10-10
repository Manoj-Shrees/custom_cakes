import 'package:flutter/foundation.dart';

class animationbloc extends ChangeNotifier {

 String _animationtypetxt = "strawberry";
 String get animationtypetxt => _animationtypetxt;

  setanimationtypetxt(String s) {
   this._animationtypetxt = s;
   notifyListeners();
  }

}