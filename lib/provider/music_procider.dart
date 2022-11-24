import 'package:flutter/cupertino.dart';
import 'package:flutter_spotify_yard/models/music_response.dart';
import 'package:flutter_spotify_yard/services/api_services.dart';

class MusicProvider with ChangeNotifier{
  MusicResponse response =MusicResponse();
  bool isLoading = false;

  getMusicData(context)async{
    isLoading=true;
    response=(await getCurrentData())!;
   
    isLoading= false;
    notifyListeners();
  }
}