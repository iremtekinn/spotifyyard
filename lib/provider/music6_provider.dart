import 'package:flutter/cupertino.dart';

import '../models/music6_response.dart';
import '../services/api_services.dart';

class Music6Provider with ChangeNotifier{
  Music6Response response =Music6Response();
  bool isLoading = false;

  getMusic6Data(context)async{
    isLoading=true;
    response=(await getCurrent6Data())!;

    isLoading= false;
    notifyListeners();
  }
}