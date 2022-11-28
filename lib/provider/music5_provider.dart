import 'package:flutter/cupertino.dart';

import '../models/music5_response.dart';
import '../services/api_services.dart';

class Music5Provider with ChangeNotifier{
  Music5Response response =Music5Response();
  bool isLoading = false;

  getMusic5Data(context)async{
    isLoading=true;
    response=(await getCurrent5Data())!;

    isLoading= false;
    notifyListeners();
  }
}