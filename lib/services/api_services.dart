import 'package:dio/dio.dart';

import '../models/music2_response.dart';
import '../models/music3_response.dart';
import '../models/music4_response.dart';
import '../models/music5_response.dart';
import '../models/music6_response.dart';
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
  final Dio _dio5=Dio(BaseOptions(
  baseUrl:"https://api.spotify.com/v1/",
  headers: {'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Authorization': 'Bearer BQAa1DqTLafRdjoyc5qE-bL1BZWGmZvKzX5GNbE3X9l7UOuras-IBxsk40gg3JX3AllURF3tYITWkdcRDNow_BcbOhmKIajosHCHzdCMK1zMMQAikuBzUtGqEV9jjpDVkF9hsINNZwGTIZ52t60tmEnuoHAQx12Xbmn50Q_m_jUtEz16dtLh5hIR4CyIsF-du_hrLBH-YRdw-IwIhAxlGgmQ9kK4nm8AsdyadjerIdCy5prZuq-bT6culgahWWoeT9u5pyiEMICJZeD4FIMgRB-IBJq6P0vVg4H2GJlCuSXS',
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
  final Dio _dio6=Dio(BaseOptions(
  baseUrl:"https://api.spotify.com/v1/",
  headers: {
    "Authorization":"Bearer BQAa1DqTLafRdjoyc5qE-bL1BZWGmZvKzX5GNbE3X9l7UOuras-IBxsk40gg3JX3AllURF3tYITWkdcRDNow_BcbOhmKIajosHCHzdCMK1zMMQAikuBzUtGqEV9jjpDVkF9hsINNZwGTIZ52t60tmEnuoHAQx12Xbmn50Q_m_jUtEz16dtLh5hIR4CyIsF-du_hrLBH-YRdw-IwIhAxlGgmQ9kK4nm8AsdyadjerIdCy5prZuq-bT6culgahWWoeT9u5pyiEMICJZeD4FIMgRB-IBJq6P0vVg4H2GJlCuSXS"
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




  