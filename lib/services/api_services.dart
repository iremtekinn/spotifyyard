import 'package:dio/dio.dart';

import '../models/music2_response.dart';
import '../models/music3_response.dart';
import '../models/music_response.dart';

final Dio _dio=Dio(BaseOptions(
  baseUrl:"https://api.spotify.com/v1/",
  headers: {
    "Authorization":"Bearer BQB5dUg6IKpi3Yc3X5DtOTSnmPs5OtjD6q-204OTvHAhCgSFSU3bOGf4UO5_lKHoaYKARHZxPLc8QDQ8pweUrQokUPYfJcqvIxInRm3cv5E8WtaHucUKhVZ002TmR2IxZ_1UfkctZLet91ueVOM1XqRwgnqvdoTzFEFOrdBqOA8JXrHvCkFQIgIb5ck1dN551hCqSHV0MDiHJiYSZSZ7WuA_0mumcLAeZgY9KKFiTV58Lyqo95O8qORRlQxqWJiIR1JehZAEklar626YmdLVgy4e4HYFbdGOyOGd5JGVAqIy"
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
    "Authorization":"Bearer BQD-hms-BDNyAFSAdIQP7s814vj3gdsbBx57Ia80LQP4C05ra1M_O_Rw1aKM66ia3Q7-A5jF3x2in26jJyViUXDWxOf6oMLDpxwwa8W5t8Na_Ib_G3-Zn9eO7wCLFM1uqBiPJi4CbcN_LC0-XX6jIBWF5tlqBXDCBYYckgslaEn7HS6vs-mZT8mozl6y4383GAVAhR5vWyhciMjHnQZ3N5aqeUMkdRpQvXMAY9Cr8eXfGm28Z8ds2vBk_N98T-NBEQGiNm9uvlDYYnFRfAB1Y4iG1Ob_EREBlGMtdt8bpYh3qxhB3b8WrxM"
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
    "Authorization":"Bearer BQBe_0xGkn4aRnGrxLJDDmz3l4uOeipf2KH0E_O9WXnkxPZczxSc23WTPcB9epftWwggKeeFhpA0C3ltjKEV6N3DFILM663B7y0Ry8YOO_Da4sUHh5Zu1SUFOqNBj4lT7X790FE1AFppd9f2HxvzZH45f3u8dwqC4QMAswDoSzxEFbNfdDr2LYH_hYTDoJmon1sO4JgP_NC6_WBsYmbkhFveg4MfAE5lDk5hph_GNj6sFrhY-Xz1S9dDzv7gu4_hNnX8slILznj5ksTLZSE_5raM74JFf7vwzX3BiVrGTN4b"
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





  