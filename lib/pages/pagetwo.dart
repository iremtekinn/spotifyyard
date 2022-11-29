import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spotify_yard/pages/pageone.dart';
import 'package:flutter_spotify_yard/pages/pagethree.dart';
import 'package:provider/provider.dart';

import '../provider/music5_provider.dart';
import '../provider/music6_provider.dart';
import '../provider/music7_provider.dart';

class Pagetwo extends StatefulWidget {
  const Pagetwo({super.key});

  @override
  State<Pagetwo> createState() => _PagetwoState();
}

class _PagetwoState extends State<Pagetwo> {
  @override
  void initState() {
    // TODO: implement initState
    Provider.of<Music5Provider>(context,listen: false).getMusic5Data(context);
    Provider.of<Music6Provider>(context,listen: false).getMusic6Data(context);
     Provider.of<Music7Provider>(context,listen: false).getMusic7Data(context);
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            children: [
              FadeInDown(
                child: Container(
                  decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(80),
                    bottomLeft: Radius.circular(80),
                  )
                  
                  ),
                  child:Stack(
                       children: [
                        Positioned(
                          right:2,
                          //child: Image.asset("assets/b3.png")
                          child: Consumer(
                            builder:(context,Music5Provider a5,child)=>a5.isLoading==true?CircularProgressIndicator():
                            //child: 
                            Container(
                              width:390,
                              height: 240,
                              decoration: BoxDecoration(
                                color:Colors.blue,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(fit: BoxFit.cover,
                                  image:NetworkImage(a5.response!.images![0].url.toString()) )
                              ),
                              //child: Image.network(a5.response!.images![0].url.toString())
                              )
                              ),
                          ),
                          Positioned(
                            top:30,left:40,child: Container(
                              width:30,
                              height:30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.grey.shade900,
                              ),
                              child: GestureDetector(onTap:() {
                                Navigator.push(context,MaterialPageRoute(builder: ((context) => Pagethree())));
                              },
                              child: Icon(Icons.arrow_back)))),
                              Positioned(top:30,right:40,child: Icon(Icons.more_vert_sharp,color:Colors.white))
                       ],
                  ),
                  width:double.infinity,
                  height: 240,
                  
                ),
              ),
              SizedBox(height:8),
              FadeInUp(
                child: Container(
                  width: 300,
                  height: 150,
                 // color:Colors.blue,
                  child: Column(
                    children: [
                      Consumer(
                        builder:(context,Music5Provider a5,child)=>a5.isLoading==true?CircularProgressIndicator():
                        //child: 
                        Text(a5.response!.name!.toString(),textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
                      Consumer(
                        builder:(context,Music5Provider a5,child)=>a5.isLoading==true?CircularProgressIndicator():
                       // child: 
                        Text(a5.response!.popularity!.toString(),textAlign: TextAlign.center, style: TextStyle(color:Color(0xff838383),fontSize: 16))),
                      Consumer(
                         builder:(context,Music5Provider a5,child)=>a5.isLoading==true?CircularProgressIndicator():
                        //child: 
                        Text(a5.response!.genres![0].toString(),textAlign: TextAlign.center, style: TextStyle(color:Color(0xff838383),fontSize: 16)))
                    ],
                  ),
              
                ),
              ),
              
              Container(
                padding: EdgeInsets.only(left:20),
                width:double.infinity,
                height:30,
              //  color:Colors.yellow,
                child: Text("Albums",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              ),
              Bounce(duration: Duration(seconds: 4),
                child: Consumer(
                  builder:(context,Music6Provider a6,child)=>a6.isLoading==true?CircularProgressIndicator():
                  //child:
                   Container(
                    width:double.infinity,
                    height:150,
                    //color:Colors.red,
                    child: ListView.builder(itemCount: a6.response?.items?.length,
                    scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:
                              Container(
                                width:100,
                                height:100,
                                //color:Colors.blue,
                                //child: Image.asset("assets/twolist.png"),
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                                image:DecorationImage(image: NetworkImage(a6.response!.items![index].images![0].url.toString()))
                                ),
                                
                              ),
                            
                          ),
                          //Text("dhfgjfgıreh")
                          Text(a6.response!.items![index].artists![0].name!.toString())
                        ],
                      );
                    },),
                  ),
                ),
              ),
              Container(
                width:350,
                height:30,
               // color:Colors.blue,
                child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FadeInLeft(child: Text("Songs",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                    FadeInRight(child: Text("See More",style: TextStyle(fontSize: 16,color:Color(0xff131313)),)),
                  ],
                )
              ),
              BounceInDown(duration: Duration(seconds: 5),
                child: Consumer(
                  builder:(context,Music7Provider a7,child)=>a7.isLoading==true?CircularProgressIndicator():
                  //child: 
                  Container(
                    width:double.infinity,
                    height: 200,
                   // color:Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20,left:20,),
                      child: ListView.builder(itemCount:a7.response?.tracks?.length,
                      scrollDirection: Axis.vertical, itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color:Color(0xffE6E6E6),
                                ),
                              width:30,
                              height: 30,
                              
                              child:Icon(Icons.play_arrow)
                            ),
                            SizedBox(width:15),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   //Text("Don't smile at me",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                                   Text(a7.response!.tracks![index].artists![0].name.toString(),style:TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                                   //Text("Billie Eilish")
                                   Container(height: 20,
                                   width: 180,
                                    child: Text(a7.response!.tracks![index].name.toString(),overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 12),))
                                ],
                              ),
                            ),
                            SizedBox(width:30),
                            //Text("5.33"),
                            SizedBox(width:80),
                            //Image.asset("assets/heart.png")
                          ],
                        );
                      },
                      ),
                    ),
                  ),
                ),
              )
              
              
            ],
          ),
        ),
      )
    );
  }
}