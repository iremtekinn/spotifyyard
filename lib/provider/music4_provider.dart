
import 'package:flutter/cupertino.dart';
import 'package:flutter_spotify_yard/models/music4_response.dart';
// import 'package:flutter_spotify_yard/models/music4_response.dart';
// import 'package:flutter_spotify_yard/models/music4_response.dart';

import '../models/music4_response.dart';
import '../services/api_services.dart';
// import '../models/music4_response.dart';
// import '../models/music4_response.dart';

class Music4Provider with ChangeNotifier{
  Music4Response response =Music4Response();
  bool isLoading = false;

  getMusic4Data(context)async{
    isLoading=true;
    response=(await getCurrent4Data())!;

    isLoading= false;
    notifyListeners();
  }
}