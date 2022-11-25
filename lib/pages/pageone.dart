import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spotify_yard/provider/music_procider.dart';
import 'package:flutter_spotify_yard/widgets/ogrid.dart';
//import 'package:flutter_spotify_yard/widgets/osearch.dart';
import 'package:flutter_spotify_yard/widgets/osearchh.dart';
import 'package:flutter_spotify_yard/widgets/otextone.dart';
import 'package:provider/provider.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override 
  MusicProvider? musProvider;
  void initState(){
    musProvider=Provider.of<MusicProvider>(context,listen:false);
    musProvider!.getMusicData(context);
    super.initState();
  }
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
                Consumer(
                  builder:(context, MusicProvider aa, child) => aa.isLoading==true?CircularProgressIndicator():
                   Container(
                      width:MediaQuery.of(context).size.width,
                      height:MediaQuery.of(context).size.height,
                      color:Colors.grey.shade200,
                      child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 3/2,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                        ), 
                        itemCount: aa.response.categories!.items!.length,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              color:Colors.blue,
                             image:DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(aa.response.categories!.items![index].icons![0].url.toString()))
                            ),
                            width:80,
                            height:80,
                            
                            child: Column(
                              children: [
                                Text(aa.response.categories!.items![index].name.toString(),style: TextStyle(color:Color(0xff42C83C)),),
                               
                              ],
                            ),
                          );
                        },
                        ),
                    ),
                )
              ],
            ),
          ),
          
          )
      ),
    );
  }
}