import 'package:flutter/cupertino.dart';
import 'package:flutter_spotify_yard/models/music2_response.dart';
import 'package:flutter_spotify_yard/services/api_services.dart';

class Music2Provider with ChangeNotifier{
  Music2Response response=Music2Response();
  bool isLoading = false;

  getMusic2Data(context)async{
    isLoading=true;
    response=(await getCurrent2Data())!;

    isLoading= false;
    notifyListeners();
  }
}