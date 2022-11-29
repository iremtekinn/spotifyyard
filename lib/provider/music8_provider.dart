import 'package:flutter/cupertino.dart';

import '../models/music8_response.dart';
import '../services/api_services.dart';

class Music8Provider with ChangeNotifier{
  Music8Response response =Music8Response();
  bool isLoading = false;

  getMusic8Data(context)async{
    isLoading=true;
    response=(await getCurrent8Data())!;

    isLoading= false;
    notifyListeners();
  }
}