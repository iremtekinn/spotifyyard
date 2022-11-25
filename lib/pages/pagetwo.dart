import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spotify_yard/pages/pageone.dart';

class Pagetwo extends StatefulWidget {
  const Pagetwo({super.key});

  @override
  State<Pagetwo> createState() => _PagetwoState();
}

class _PagetwoState extends State<Pagetwo> {
  List<String>twoliste=[
    "assets/twolist.png",
    "assets/twolist.png",
  ];
  List<String>twloistetext=[
    "lilbublegum",
     "lilbublegum",
    ];
  List<String>twoliste2=[
    "Don't smile"
  ];
  List<String>twolisttext2=[
    "Billie Eilish"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                color:Color(0xff42C83C),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(80),
                  bottomLeft: Radius.circular(80),
                )
                
                ),
                child: Row(
                  
                 // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: ((context) => PageOne())));
                      },
                      child: Icon(Icons.arrow_back)),
                      Image.asset("assets/twolist.png"),
                    Icon(Icons.more_vert_sharp)
                  ],
                ),
                width:double.infinity,
                height: 240,
                
              ),
              SizedBox(height:8),
              Container(
                width: 300,
                height: 150,
                color:Colors.blue,
                child: Column(
                  children: [
                    Text("Billie Eilish",textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    Text("2 Albums, 67 track",textAlign: TextAlign.center, style: TextStyle(color:Color(0xff838383),fontSize: 16)),
                    Text("Lorem ıpsum dolar sit amet,consectur adipscising elit turpis adipsiciosing vestribium orici enim nasture viatere",textAlign: TextAlign.center, style: TextStyle(color:Color(0xff838383),fontSize: 16))
                  ],
                ),

              ),
              
              Container(
                padding: EdgeInsets.only(left:20),
                width:double.infinity,
                height:40,
                color:Colors.yellow,
                child: Text("Albums",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              ),
              Container(
                width:double.infinity,
                height:150,
                color:Colors.red,
                child: ListView.builder(itemCount: 5,
                scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width:100,
                          height:100,
                          //color:Colors.blue,
                          child: Image.asset("assets/twolist.png"),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                      Text("dhfgjfgıreh")
                    ],
                  );
                },),
              ),
              Container(
                width:350,
                height:30,
                color:Colors.blue,
                child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Songs",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text("See all",style: TextStyle(fontSize: 16,color:Color(0xff131313)),),
                  ],
                )
              ),
              Container(
                width:double.infinity,
                height: 200,
                color:Colors.red,
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text("Don't smile at me",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                             Text("Billie Eilish")
                          ],
                        ),
                        SizedBox(width:30),
                        Text("5.33"),
                        SizedBox(width:100),
                        Image.asset("assets/heart.png")
                      ],
                    );
                  },
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