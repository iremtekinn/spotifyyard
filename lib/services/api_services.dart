import 'package:dio/dio.dart';

import '../models/music_response.dart';

final Dio _dio=Dio(BaseOptions(
  baseUrl:"https://api.spotify.com/v1/",
  headers: {
    "Authorization":"Bearer BQBGMhzFEaGCWUi-E495ZgQMBtsjCV4VsiJ3HZLs875GGgwMhAZlNZrZQN0CSaHoPS7S7CFrHATc0UvEJxquUoQb4cp1OfmxkcZYmKeLA_nVsTxEbiGXHNolmqyxMPquB4mN4JFGdRzyWKB9PhfDyGsrIup3pA9oMEMaOgHR_F50VriVH5MP7KGTdA9b_F1EKFpphAr0ONeGRYEPLYu_b66QydaP9LxTkpALM9kyGaldLGk3GM30UNowEWUbHaG3oWmmSLszsqDIYC4AruSpLGEmFMtMHBoP0P9yt9rXtA9g"
  },
  connectTimeout:5000,
  receiveTimeout:3000));
 
  Future<MusicResponse?>getCurrentData()async{
    MusicResponse musicResponse;
    try{
      final response =await _dio.get("browse/categories?country=TR&locale=tr_TR&limit=10&offset=5");
      musicResponse=MusicResponse.fromJson(response.data);
      
      
      return musicResponse;
    }
    catch(e){
     
    }
     return null;
  }