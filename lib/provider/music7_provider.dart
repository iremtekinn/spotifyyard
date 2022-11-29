import 'package:flutter/cupertino.dart';

import '../models/music7_response.dart';
import '../services/api_services.dart';

class Music7Provider with ChangeNotifier{
  Music7Response response =Music7Response();
  bool isLoading = false;

  getMusic7Data(context)async{
    isLoading=true;
    response=(await getCurrent7Data())!;

    isLoading= false;
    notifyListeners();
  }
}