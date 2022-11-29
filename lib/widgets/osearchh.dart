import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Osearchh extends StatefulWidget {
  const Osearchh({super.key});

  @override
  State<Osearchh> createState() => _OsearchhState();
}

class _OsearchhState extends State<Osearchh> {
  final _textController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Column(
        children: [
          TextField(
            controller: _textController,
            decoration: InputDecoration(
              hintText:'What would you like to listen to?',
              border: OutlineInputBorder(),
              suffixIcon: IconButton(
                onPressed: () {
                  
                     _textController.clear();
                  
                 
                }, 
                icon: Icon(Icons.clear)),

              
            ),
          )
          ],
      ),
    );
  }
}