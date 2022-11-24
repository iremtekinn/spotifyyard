import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spotify_yard/pages/pagetwo.dart';

class Pagethree extends StatefulWidget {
  const Pagethree({super.key});

  @override
  State<Pagethree> createState() => _PagethreeState();
}

class _PagethreeState extends State<Pagethree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body:SingleChildScrollView(
        
        child:Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color:Color(0xff42C83C),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(70),
                  bottomLeft: Radius.circular(70),
                )
                
                ),
              width: double.infinity,
              height: 300,
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => Pagetwo())));
                    },
                    child: Icon(Icons.arrow_back)),
                    Text("Profile",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  Icon(Icons.more_vert_sharp),
                  
                ],
              ),
        
              
              
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left:25),
              child: Container(width:double.infinity,
              height:20,
              color: Colors.yellow,
                child: Text("PUBLIC PLAYLIST",textAlign: TextAlign.left,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
            ),

            Container(
                width:double.infinity,
                height: 600,
                color:Colors.red,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20,left:20),
                  child: ListView.builder(itemCount:10,
                  scrollDirection: Axis.vertical, itemBuilder: (context, index) {
                    return Row(
                      children: [
                         Padding(
                           padding: const EdgeInsets.only(top: 5),
                           child: Container(
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(15),
                              color:Colors.blue,
                              
                               ),
                             width:58,
                            height: 56,
                            
                            child:
                            Image.asset("assets/twolist.png",fit: BoxFit.cover,),
                        ),
                         ),
                        SizedBox(width:15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text("Don't smile at me",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                             Text("Billie Eilish",style:TextStyle(color:Color(0xffA68C8C)))
                          ],
                        ),
                        SizedBox(width:50),
                        Text("5.33",style:TextStyle(color:Color(0xffA68C8C))),
                        SizedBox(width:40),
                        Icon(Icons.more_horiz,color: Color(0xffA68C8C),)
                      ],
                    );
                  },
                  ),
                ),
              )
            
          ],
        )
      )
    );
  }
}