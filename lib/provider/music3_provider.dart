import 'package:flutter/cupertino.dart';
import 'package:flutter_spotify_yard/models/music3_response.dart';
import 'package:flutter_spotify_yard/services/api_services.dart';

import '../models/music2_response.dart';

class Music3Provider with ChangeNotifier {
  Music3Response? response = Music3Response();
  Music2Response? responseMusic2 = Music2Response();
  bool isLoading = false;

  getMusic3Data(context) async {
    isLoading = true;
    response = await getCurrent3Data();
    print(response);
    isLoading = false;
    notifyListeners();
  }

  getMusic2Data(context) async {
    isLoading = true;
    responseMusic2 = (await getCurrent2Data())!;

    isLoading = false;
    notifyListeners();
  }
}
