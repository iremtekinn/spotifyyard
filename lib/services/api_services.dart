import 'package:dio/dio.dart';

import '../models/music2_response.dart';
import '../models/music3_response.dart';
import '../models/music4_response.dart';
import '../models/music5_response.dart';
import '../models/music6_response.dart';
import '../models/music7_response.dart';
import '../models/music8_response.dart';
import '../models/music9_reponse.dart';
import '../models/music_response.dart';

final Dio _dio=Dio(BaseOptions(
  baseUrl:"https://api.spotify.com/v1/",
  headers: {
    "Authorization":"Bearer BQBCbM1yE65_buhbwAHFJLSfkMD3Q2Is6V3TgXE61f3MWtXZ8KNcW2hk3ImQPGM6fP-ODIuL7G2Z4uBbR2Uyv63WFjGeGE3cDvCjd-GYNIqehgiYOUPN-0nezdWBomdjNTpYvlO04FIzM1yczdDoHs7PqTmd46yylESFwIZKZpnYCYx8ifbGh1L-3tE7UlTsph43ali0bF0Tr4VCwd3fDrU2_kzfFfuS_U2CbeiBIDbb932bIq3VA4EedOhnWggONh8fG0mVQc6QfWkIsS2xbCNT7BlLZqrhL9nEFyMqNxsE"
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


  final Dio _dio2=Dio(BaseOptions(
  baseUrl:"https://api.spotify.com/v1/",
  headers: {
    "Authorization":"Bearer BQBCbM1yE65_buhbwAHFJLSfkMD3Q2Is6V3TgXE61f3MWtXZ8KNcW2hk3ImQPGM6fP-ODIuL7G2Z4uBbR2Uyv63WFjGeGE3cDvCjd-GYNIqehgiYOUPN-0nezdWBomdjNTpYvlO04FIzM1yczdDoHs7PqTmd46yylESFwIZKZpnYCYx8ifbGh1L-3tE7UlTsph43ali0bF0Tr4VCwd3fDrU2_kzfFfuS_U2CbeiBIDbb932bIq3VA4EedOhnWggONh8fG0mVQc6QfWkIsS2xbCNT7BlLZqrhL9nEFyMqNxsE"
  },
  connectTimeout:5000,
  receiveTimeout:3000));
 
  Future<Music2Response?>getCurrent2Data()async{
    Music2Response musicResponse;
    try{
      final response =await _dio.get("users/smedjan/playlists?offset=0&limit=20");
      musicResponse=Music2Response.fromJson(response.data);
      
      
      return musicResponse;
    }
    catch(e){
     
    }
     return null;
  }
  final Dio _dio3=Dio(BaseOptions(
  baseUrl:"https://api.spotify.com/v1/",
  headers: {
    "Authorization":"Bearer BQBCbM1yE65_buhbwAHFJLSfkMD3Q2Is6V3TgXE61f3MWtXZ8KNcW2hk3ImQPGM6fP-ODIuL7G2Z4uBbR2Uyv63WFjGeGE3cDvCjd-GYNIqehgiYOUPN-0nezdWBomdjNTpYvlO04FIzM1yczdDoHs7PqTmd46yylESFwIZKZpnYCYx8ifbGh1L-3tE7UlTsph43ali0bF0Tr4VCwd3fDrU2_kzfFfuS_U2CbeiBIDbb932bIq3VA4EedOhnWggONh8fG0mVQc6QfWkIsS2xbCNT7BlLZqrhL9nEFyMqNxsE"
  },
  connectTimeout:5000,
  receiveTimeout:3000));
 
  Future<Music3Response?> getCurrent3Data()async{
    Music3Response musicResponse;
    try{
      final response =await _dio.get("users/31ou32ihswad2dohj6rgd3hp7gla");
      musicResponse=Music3Response.fromJson(response.data);
      
      print(response.data);
      return musicResponse;
    }
    catch(e){
     
    }
     return null;
  }

  final Dio _dio4=Dio(BaseOptions(//olmadı deneme bunu çağırmadım hiçbir sayfada
  baseUrl:"https://api.spotify.com/v1/",
  headers: {
    "Authorization":"Bearer BQBCbM1yE65_buhbwAHFJLSfkMD3Q2Is6V3TgXE61f3MWtXZ8KNcW2hk3ImQPGM6fP-ODIuL7G2Z4uBbR2Uyv63WFjGeGE3cDvCjd-GYNIqehgiYOUPN-0nezdWBomdjNTpYvlO04FIzM1yczdDoHs7PqTmd46yylESFwIZKZpnYCYx8ifbGh1L-3tE7UlTsph43ali0bF0Tr4VCwd3fDrU2_kzfFfuS_U2CbeiBIDbb932bIq3VA4EedOhnWggONh8fG0mVQc6QfWkIsS2xbCNT7BlLZqrhL9nEFyMqNxsE"
  },
  connectTimeout:5000,
  receiveTimeout:3000));
 
  Future<Music4Response?> getCurrent4Data()async{
    Music4Response musicResponse;
    try{
      final response =await _dio.get("artists/0TnOYISbd1XYRBk9myaseg/albums?include_groups=single%2Cappears_on&market=ES&limit=10&offset=5");
      musicResponse=Music4Response.fromJson(response.data);
      
      print(response.data);
      return musicResponse;
    }
    catch(e){
     
    }
     return null;
  }

//https://developer.spotify.com/console/get-artist/?id=0TnOYISbd1XYRBk9myaseg
//pagetwo
  final Dio _dio5=Dio(BaseOptions(
  baseUrl:"https://api.spotify.com/v1/",
  headers: {'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Authorization': 'Bearer BQAb9QrNfZDsnmT89zGFepg4BLEmRHIWLZsoYaxf0du7pbAIIjTzwqU3wERSI7wjPWQPclzbcLJ63GQ266gbpwYSnGCrYSMYBgY1iJnXXMke1cFYpk-tdfAkPJQ92GTgivXaari0xInp3pYZQy25agIHgjyGETAt8C18GQ30Eajt3fCA5S5Bd6QcE6LGB3ZSoipQqxzmrh2_jbrMpnYSbc0kERMz0xooH3QPQt0URLgzC-pjQCterEsSiqlIimxrmXP_fhvrR15mJwqX1QV0aXAW0WAsLslwLpt6CKt4d4R1',
   },
  connectTimeout:5000,
  receiveTimeout:3000));
 
  Future<Music5Response?> getCurrent5Data()async{



    
    Music5Response musicResponse;
    try{
      final response =await _dio5.get("artists/0TnOYISbd1XYRBk9myaseg");
      musicResponse=Music5Response.fromJson(response.data);
      
      print(response.data);
      return musicResponse;
    }
    catch(e){
     
    }
     return null;
  }

//https://developer.spotify.com/console/get-artist-albums/?id=0TnOYISbd1XYRBk9myaseg&include_groups=single%2Cappears_on&market=ES&limit=10&offset=5
//pagetwo
  final Dio _dio6=Dio(BaseOptions(
  baseUrl:"https://api.spotify.com/v1/",
  headers: {
    "Authorization":"Bearer BQAb9QrNfZDsnmT89zGFepg4BLEmRHIWLZsoYaxf0du7pbAIIjTzwqU3wERSI7wjPWQPclzbcLJ63GQ266gbpwYSnGCrYSMYBgY1iJnXXMke1cFYpk-tdfAkPJQ92GTgivXaari0xInp3pYZQy25agIHgjyGETAt8C18GQ30Eajt3fCA5S5Bd6QcE6LGB3ZSoipQqxzmrh2_jbrMpnYSbc0kERMz0xooH3QPQt0URLgzC-pjQCterEsSiqlIimxrmXP_fhvrR15mJwqX1QV0aXAW0WAsLslwLpt6CKt4d4R1"
  },
  connectTimeout:5000,
  receiveTimeout:3000));
 
  Future<Music6Response?>getCurrent6Data()async{
    Music6Response musicResponse;
    try{
      final response =await _dio6.get("artists/0TnOYISbd1XYRBk9myaseg/albums?include_groups=single%2Cappears_on&market=ES&limit=10&offset=5");
      musicResponse=Music6Response.fromJson(response.data);
      
      
      return musicResponse;
    }
    catch(e){
     
    }
     return null;
  }

//https://developer.spotify.com/console/get-artist-top-tracks/?id=0TnOYISbd1XYRBk9myaseg&market=ES
//pagetwo
  final Dio _dio7=Dio(BaseOptions(
  baseUrl:"https://api.spotify.com/v1/",
  headers: {
    "Authorization":"Bearer BQAb9QrNfZDsnmT89zGFepg4BLEmRHIWLZsoYaxf0du7pbAIIjTzwqU3wERSI7wjPWQPclzbcLJ63GQ266gbpwYSnGCrYSMYBgY1iJnXXMke1cFYpk-tdfAkPJQ92GTgivXaari0xInp3pYZQy25agIHgjyGETAt8C18GQ30Eajt3fCA5S5Bd6QcE6LGB3ZSoipQqxzmrh2_jbrMpnYSbc0kERMz0xooH3QPQt0URLgzC-pjQCterEsSiqlIimxrmXP_fhvrR15mJwqX1QV0aXAW0WAsLslwLpt6CKt4d4R1"
  },
  connectTimeout:5000,
  receiveTimeout:3000));
 
  Future<Music7Response?>getCurrent7Data()async{
    Music7Response musicResponse;
    try{
      final response =await _dio7.get("artists/0TnOYISbd1XYRBk9myaseg/top-tracks?market=ES");
      musicResponse=Music7Response.fromJson(response.data);
      
      
      return musicResponse;
    }
    catch(e){
     
    }
     return null;
  }

//https://developer.spotify.com/console/get-new-releases/?country=SE&limit=10&offset=5
//fourth
  final Dio _dio8=Dio(BaseOptions(
  baseUrl:"https://api.spotify.com/v1/",
  headers: {
    "Authorization":"Bearer BQBjsSo1jRryxP-B7KJiD_25UvFuirpqk_jRQAYzyjtmPIJmZEPeXz-loD0zvxUIz_F_ZD_ESjrrTClb0Ml29lVMiVa9yLRK_gHdB93dfFdT8G4vFm0btw6TagSH-EZKNzoluI24hLUoZ9aYkUxNiMJdu4uouB8CCtFjZJQxMdeVksmfCkZcpXNS2DQYHUSL2_uJCAiBecoKxdxN0f05xAeefGd_xG1lX1BZZrLfDbYFpMc75Mnpj17pfjjVr9OGK0N_bikDaO8kw1Uy4w9mPFU9rv63GWWjoP7NU31B4RcC"
  },
  connectTimeout:5000,
  receiveTimeout:3000));
 
  Future<Music8Response?>getCurrent8Data()async{
    Music8Response musicResponse;
    try{
      final response =await _dio8.get("browse/new-releases?country=SE&limit=10&offset=5");
      musicResponse=Music8Response.fromJson(response.data);
      
      
      return musicResponse;
    }
    catch(e){
     
    }
     return null;
  }

//https://developer.spotify.com/console/get-artist-top-tracks/?id=0TnOYISbd1XYRBk9myaseg&market=ES
//fourth
  final Dio _dio9=Dio(BaseOptions(
  baseUrl:"https://api.spotify.com/v1/",
  headers: {
    "Authorization":"Bearer BQBjsSo1jRryxP-B7KJiD_25UvFuirpqk_jRQAYzyjtmPIJmZEPeXz-loD0zvxUIz_F_ZD_ESjrrTClb0Ml29lVMiVa9yLRK_gHdB93dfFdT8G4vFm0btw6TagSH-EZKNzoluI24hLUoZ9aYkUxNiMJdu4uouB8CCtFjZJQxMdeVksmfCkZcpXNS2DQYHUSL2_uJCAiBecoKxdxN0f05xAeefGd_xG1lX1BZZrLfDbYFpMc75Mnpj17pfjjVr9OGK0N_bikDaO8kw1Uy4w9mPFU9rv63GWWjoP7NU31B4RcC"
  },
  connectTimeout:5000,
  receiveTimeout:3000));
 
  Future<Music9Response?>getCurrent9Data()async{
    Music9Response musicResponse;
    try{
      final response =await _dio8.get("artists/0TnOYISbd1XYRBk9myaseg/top-tracks?market=ES");
      musicResponse=Music9Response.fromJson(response.data);
      
      
      return musicResponse;
    }
    catch(e){
     
    }
     return null;
  }




  