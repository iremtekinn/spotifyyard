//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spotify_yard/pages/pageone.dart';
import 'package:flutter_spotify_yard/pages/pagetwo.dart';

class Fourth extends StatefulWidget {
  const Fourth({super.key});

  @override
  State<Fourth> createState() => _FourthState();
}

class _FourthState extends State<Fourth> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(top: 25, right: 20, left: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                //color: Colors.blue,
                width: double.infinity,
                height: 185,
                child: Stack(
                  children: [
                    Positioned(top: 15, left: 10, child: Icon(Icons.search)),
                    Positioned(
                        top: 2,
                        left: 130,
                        child: Image.asset(
                          "assets/spotify.png",
                          width: 90,
                          height: 50,
                        )),
                    Positioned(
                        top: 15, right: 10, child: Icon(Icons.more_vert_sharp)),
                        Positioned(
                          top:50,
                          child: Container(
                            decoration: BoxDecoration(
                  color: Color(0xff42C83C),
                  borderRadius: BorderRadius.circular(30)),
                            width:355,
                            height: 140,
                            //color:Color(0xff42C83C),
                            )
                            ),
                            Positioned(
                      top: 60,
                      left: 10,
                      child: Text(
                        "New Album",
                        style: TextStyle(color: Colors.white),
                      )),
                      Positioned( child: Image.asset("assets/b1.png")),
                      Positioned(top:75,left:10,child: Text("Happier Than Ever",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 26))),
                  Positioned(top:145,left:10,child: Text("Billie Eilish",style: TextStyle(color: Colors.white,fontSize: 12)))
                  ],
                )
                ),
            SizedBox(height: 35),
            Container(
              width: double.infinity,
              height: 30,
              //color: Colors.red,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onDoubleTap: () {},
                    child: Container(
                      width: 100,
                      height: 10,
                    //  color: Colors.blue,
                      child: Text(
                        "News",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onDoubleTap: () {},
                    child: Container(
                      width: 100,
                      height: 10,
                     // color: Colors.pink,
                      child: Text("Video",
                          style: TextStyle(color: Color(0xffBEBEBE))),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 100,
                      height: 10,
                     // color: Colors.yellow,
                      child: Text("Artists",
                          style: TextStyle(color: Color(0xffBEBEBE))),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 100,
                      height: 10,
                     // color: Colors.green,
                      child: Text("Podcasts",
                          style: TextStyle(color: Color(0xffBEBEBE))),
                    ),
                  ),
                ],
              ),
            ),
           // SizedBox(height: 10,),
           Container(
            width:double.infinity,
            height: 250,
            //color:Colors.green,
            child: ListView.builder(itemCount:3,scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Positioned(
                          child:  Container(
                        
                        child:Image.asset("assets/b2.png"),
                       // decoration: BoxDecoration(color:Colors.blue,),
                        
                      ),
                          ),
                          Positioned(
                            bottom:1,right:5,
                            child: 
                          Container(
                            decoration: BoxDecoration(color:Color(0xffE6E6E6),
                            borderRadius: BorderRadius.circular(15)),
                            width:29,
                            height: 29,
                            child: Icon(Icons.play_arrow)
                          )
                          )
                      ],
                     
                    ),
                  ),
                  Text("Bad guy",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                  Text("Billie Eilish",style: TextStyle(color:Colors.grey.shade800),)
                ],
              );
            },),
           ),
           SizedBox(height: 5,),
           Container(
            width:double.infinity,
            height: 35,
           // color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                GestureDetector(
                  onTap: () {
                    
                  },
                  child: Text("Playlist",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18))),
                GestureDetector(
                  onTap: () {
                    
                  },
                  child: Text("See More",style: TextStyle(color:Colors.grey.shade700),))
              ],
            )
           ),

           Container(
                width:double.infinity,
                height: 250,
                //color:Colors.red,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20,left:20),
                  child: ListView.builder(itemCount:8,
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
                               Text("As ıt wass",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                               Text("Harry Styles")
                            ],
                          ),
                        ),
                        SizedBox(width:35),
                        Text("5.33"),
                        SizedBox(width:60),
                        Image.asset("assets/heart.png",color:Color(0xffB4B4B4))
                      ],
                    );
                  },
                  ),
                ),
              )
      
          ],
        ),
      ),
    ),
     
      

    
    );
    
  }
}
