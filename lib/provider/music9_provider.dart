import 'package:flutter/cupertino.dart';

import '../models/music9_reponse.dart';
import '../services/api_services.dart';

class Music9Provider with ChangeNotifier{
  Music9Response response =Music9Response();
  bool isLoading = false;

  getMusic9Data(context)async{
    isLoading=true;
    response=(await getCurrent9Data())!;

    isLoading= false;
    notifyListeners();
  }
}