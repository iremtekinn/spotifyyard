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
    "Authorization":"Bearer BQCsnY8EDYxr24KOUzF1dZflRP_hUJPJ_UtX5IKzthnnFH2PrkF_JLw4fy575E7392c7mSzTBuap8gv_ep79Gx-QBeIDVupbrHA_ZgDXaTQT2JALMOhTiNH9ZTRl6USgSGDWX9ozdUaMVw13lc0FfG3IYodMG2EmUiLHXkEn7jtQbqO_Y1T75MPSs8YkjLRnr49yivfNsRpcmuz5HK5Wnf27zbE5H1ZumzthjLXrXb4_lhZk4F1vVMgE5W0dhK29WmzRZ56No5M1vExXSwW7IgJslS4_JWFBzcB4gy9gwNjE"
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
    "Authorization":"Bearer BQCsnY8EDYxr24KOUzF1dZflRP_hUJPJ_UtX5IKzthnnFH2PrkF_JLw4fy575E7392c7mSzTBuap8gv_ep79Gx-QBeIDVupbrHA_ZgDXaTQT2JALMOhTiNH9ZTRl6USgSGDWX9ozdUaMVw13lc0FfG3IYodMG2EmUiLHXkEn7jtQbqO_Y1T75MPSs8YkjLRnr49yivfNsRpcmuz5HK5Wnf27zbE5H1ZumzthjLXrXb4_lhZk4F1vVMgE5W0dhK29WmzRZ56No5M1vExXSwW7IgJslS4_JWFBzcB4gy9gwNjE"
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
    "Authorization":"Bearer BQCsnY8EDYxr24KOUzF1dZflRP_hUJPJ_UtX5IKzthnnFH2PrkF_JLw4fy575E7392c7mSzTBuap8gv_ep79Gx-QBeIDVupbrHA_ZgDXaTQT2JALMOhTiNH9ZTRl6USgSGDWX9ozdUaMVw13lc0FfG3IYodMG2EmUiLHXkEn7jtQbqO_Y1T75MPSs8YkjLRnr49yivfNsRpcmuz5HK5Wnf27zbE5H1ZumzthjLXrXb4_lhZk4F1vVMgE5W0dhK29WmzRZ56No5M1vExXSwW7IgJslS4_JWFBzcB4gy9gwNjE"
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
    "Authorization":"Bearer BQCsnY8EDYxr24KOUzF1dZflRP_hUJPJ_UtX5IKzthnnFH2PrkF_JLw4fy575E7392c7mSzTBuap8gv_ep79Gx-QBeIDVupbrHA_ZgDXaTQT2JALMOhTiNH9ZTRl6USgSGDWX9ozdUaMVw13lc0FfG3IYodMG2EmUiLHXkEn7jtQbqO_Y1T75MPSs8YkjLRnr49yivfNsRpcmuz5HK5Wnf27zbE5H1ZumzthjLXrXb4_lhZk4F1vVMgE5W0dhK29WmzRZ56No5M1vExXSwW7IgJslS4_JWFBzcB4gy9gwNjE"
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
    'Authorization': 'Bearer BQCsnY8EDYxr24KOUzF1dZflRP_hUJPJ_UtX5IKzthnnFH2PrkF_JLw4fy575E7392c7mSzTBuap8gv_ep79Gx-QBeIDVupbrHA_ZgDXaTQT2JALMOhTiNH9ZTRl6USgSGDWX9ozdUaMVw13lc0FfG3IYodMG2EmUiLHXkEn7jtQbqO_Y1T75MPSs8YkjLRnr49yivfNsRpcmuz5HK5Wnf27zbE5H1ZumzthjLXrXb4_lhZk4F1vVMgE5W0dhK29WmzRZ56No5M1vExXSwW7IgJslS4_JWFBzcB4gy9gwNjE',
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
    "Authorization":"Bearer BQCsnY8EDYxr24KOUzF1dZflRP_hUJPJ_UtX5IKzthnnFH2PrkF_JLw4fy575E7392c7mSzTBuap8gv_ep79Gx-QBeIDVupbrHA_ZgDXaTQT2JALMOhTiNH9ZTRl6USgSGDWX9ozdUaMVw13lc0FfG3IYodMG2EmUiLHXkEn7jtQbqO_Y1T75MPSs8YkjLRnr49yivfNsRpcmuz5HK5Wnf27zbE5H1ZumzthjLXrXb4_lhZk4F1vVMgE5W0dhK29WmzRZ56No5M1vExXSwW7IgJslS4_JWFBzcB4gy9gwNjE"
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
    "Authorization":"Bearer BQCsnY8EDYxr24KOUzF1dZflRP_hUJPJ_UtX5IKzthnnFH2PrkF_JLw4fy575E7392c7mSzTBuap8gv_ep79Gx-QBeIDVupbrHA_ZgDXaTQT2JALMOhTiNH9ZTRl6USgSGDWX9ozdUaMVw13lc0FfG3IYodMG2EmUiLHXkEn7jtQbqO_Y1T75MPSs8YkjLRnr49yivfNsRpcmuz5HK5Wnf27zbE5H1ZumzthjLXrXb4_lhZk4F1vVMgE5W0dhK29WmzRZ56No5M1vExXSwW7IgJslS4_JWFBzcB4gy9gwNjE"
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
    "Authorization":"Bearer BQCsnY8EDYxr24KOUzF1dZflRP_hUJPJ_UtX5IKzthnnFH2PrkF_JLw4fy575E7392c7mSzTBuap8gv_ep79Gx-QBeIDVupbrHA_ZgDXaTQT2JALMOhTiNH9ZTRl6USgSGDWX9ozdUaMVw13lc0FfG3IYodMG2EmUiLHXkEn7jtQbqO_Y1T75MPSs8YkjLRnr49yivfNsRpcmuz5HK5Wnf27zbE5H1ZumzthjLXrXb4_lhZk4F1vVMgE5W0dhK29WmzRZ56No5M1vExXSwW7IgJslS4_JWFBzcB4gy9gwNjE"
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
    "Authorization":"Bearer BQCsnY8EDYxr24KOUzF1dZflRP_hUJPJ_UtX5IKzthnnFH2PrkF_JLw4fy575E7392c7mSzTBuap8gv_ep79Gx-QBeIDVupbrHA_ZgDXaTQT2JALMOhTiNH9ZTRl6USgSGDWX9ozdUaMVw13lc0FfG3IYodMG2EmUiLHXkEn7jtQbqO_Y1T75MPSs8YkjLRnr49yivfNsRpcmuz5HK5Wnf27zbE5H1ZumzthjLXrXb4_lhZk4F1vVMgE5W0dhK29WmzRZ56No5M1vExXSwW7IgJslS4_JWFBzcB4gy9gwNjE"
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




  