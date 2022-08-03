import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
class controlller with ChangeNotifier
{
  var selectedvalue;
  int get value
  {
    return  selectedvalue;
}
void onchangegender(var gender)
{
  selectedvalue=gender;
  notifyListeners();
}

}