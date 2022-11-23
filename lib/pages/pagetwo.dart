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
                color:Colors.red,
                
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
              SizedBox(height:2),
              Container(
                width: double.infinity,
                height: 20,
                color:Colors.blue,
                child: Text("Billie Eilish",textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),),
              )
            ],
          ),
        ),
      )
    );
  }
}