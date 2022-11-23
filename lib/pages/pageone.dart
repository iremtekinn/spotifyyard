import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spotify_yard/widgets/ogrid.dart';
//import 'package:flutter_spotify_yard/widgets/osearch.dart';
import 'package:flutter_spotify_yard/widgets/osearchh.dart';
import 'package:flutter_spotify_yard/widgets/otextone.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Padding(
          padding: EdgeInsets.only(right: 10,left:10,top:25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Osearchh(),
                SizedBox(height:2),
                Otextone(),
                SizedBox(height: 2,),
                Ogrid()
              ],
            ),
          ),
          
          )
      ),
    );
  }
}