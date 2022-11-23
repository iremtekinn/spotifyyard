import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Pagetwo extends StatefulWidget {
  const Pagetwo({super.key});

  @override
  State<Pagetwo> createState() => _PagetwoState();
}

class _PagetwoState extends State<Pagetwo> {
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
                    Icon(Icons.arrow_back),
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
              SizedBox(height:4),
              Container(
                padding: EdgeInsets.only(left:20),
                width:double.infinity,
                height:40,
                color:Colors.yellow,
                child: Text("Albums",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              )
              
              
            ],
          ),
        ),
      )
    );
  }
}