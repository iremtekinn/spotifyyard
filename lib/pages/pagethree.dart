import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spotify_yard/pages/pagetwo.dart';
import 'package:provider/provider.dart';

import '../provider/music2_provider.dart';
import '../provider/music3_provider.dart';

class Pagethree extends StatefulWidget {
  const Pagethree({super.key});

  @override
  State<Pagethree> createState() => _PagethreeState();
}

class _PagethreeState extends State<Pagethree> {
   @override 
  Music3Provider? mus3Provider;
  void initState(){
    mus3Provider=Provider.of<Music3Provider>(context,listen:false);
    mus3Provider?.getMusic3Data(context);
    mus3Provider?.getMusic2Data(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(70),
                      bottomLeft: Radius.circular(70),
                    )),
                width: double.infinity,
                height: 300,
                child: Stack(
                  children: [
                    Positioned(
                        top: 40,
                        left: 10,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => Pagetwo())));
                          },
                          child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Color(0xffE6E6E6),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Icon(Icons.arrow_back)),
                        )),
                    Positioned(
                      top: 45,
                      left: 170,
                      child: Text(
                        "Profile",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      top: 45,
                      left: 350,
                      child:
                          Icon(Icons.more_vert_sharp, color: Color(0xffA68C8C)),
                    ),
                    Positioned(
                        top: 90,
                        left: 150,
                        child: Consumer(
                          builder:(context, Music3Provider aaa, child) => aaa?.isLoading==true?CircularProgressIndicator():
                           Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.blue,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image:NetworkImage(aaa.response!.images![0].url.toString()) 
                                )
                            ),
                            width: 93,
                            height: 93,
                          ),
                        )),
                        Positioned(
                          top: 190,
                        left: 110,
                          child: Text("sorushnoruzyui@gmail.com",style: TextStyle(color: Color(0xff222222),),)
                          ),
                          Positioned(
                            top:210,left:160,
                            child: Text("Sorushnrz",style: TextStyle(fontWeight: FontWeight.bold,fontSize:18),)
                            ),
                            Positioned(
                              top: 240,
                        left: 100,
                              child: Column(
                                children: [
                                  Text("778",style: TextStyle(fontWeight: FontWeight.bold,fontSize:18),),
                                  Text("Followes",style: TextStyle(fontWeight: FontWeight.bold,fontSize:18,color: Color(0xffE6E6E6),),),
                                ],
                              )
                              ),
                               Positioned(
                              top: 240,
                        left: 250,
                              child: Column(
                                children: [
                                  Text("243",style: TextStyle(fontWeight: FontWeight.bold,fontSize:18),),
                                  Text("Followes",style: TextStyle(fontWeight: FontWeight.bold,fontSize:18,color: Color(0xffE6E6E6),),),
                                ],
                              )
                              ),
                  ],
                )),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Container(
                  width: double.infinity,
                  height: 20,
                  //color: Colors.yellow,
                  child: Text(
                    "PUBLIC PLAYLIST",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  )),
            ),
            Consumer(
              builder:(context, Music3Provider a2, child) => a2.isLoading==true?CircularProgressIndicator():
               Container(
                width: double.infinity,
                height: 600,
                color: Colors.grey.shade200,
                child: Padding(
                  padding: const EdgeInsets.only( left:10),
                  child: ListView.builder(
                    itemCount: a2.responseMusic2?.items?.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(fit: BoxFit.cover,
                                  image: NetworkImage(
                                a2.responseMusic2!.items![index].images!.isEmpty?"https://digitalage.com.tr/wp-content/uploads/2022/08/spotify-konser-biletleri-835.jpg":a2.responseMusic2!.items![index].images![0].url.toString(),
                                
                              ),),
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.blue,
                              ),
                              width: 58,
                              height: 56,
                              // child: NetworkImage(
                              //   a2.response.items![index].images![0].url.toString()
                                
                              // ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(a2.responseMusic2!.items![index].name!.toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 12)),
                              Text(a2.responseMusic2!.items![index].owner!.displayName.toString(),
                                  style: TextStyle(color: Color(0xffA68C8C)))
                            ],
                          ),
                          // SizedBox(width: 20),
                          // Text("5.33",
                           //  style: TextStyle(color: Color(0xffA68C8C))),
                         // SizedBox(width: 40),
                          // Icon(
                          //   Icons.more_horiz,
                          //   color: Color(0xffA68C8C),
                          // )
                        ],
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        )));
  }
}
