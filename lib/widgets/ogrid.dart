import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Ogrid extends StatefulWidget {
  const Ogrid({super.key});

  @override
  State<Ogrid> createState() => _OgridState();
}

class _OgridState extends State<Ogrid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:MediaQuery.of(context).size.width,
      height:MediaQuery.of(context).size.height,
      color:Colors.red,
      child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3/2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        ), 
        itemCount: 25,
        itemBuilder: (context, index) {
          return Container(
            width:80,
            height: 80,
            color:Colors.blue,
          );
        },
        ),
    );
  }
}