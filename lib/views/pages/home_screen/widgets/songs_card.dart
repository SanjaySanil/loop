import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loop/routes/routes.dart';
import 'package:loop/views/widgets/section_header.dart';

class SongsCard extends StatelessWidget {
  const SongsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap:(){
        Get.toNamed(AppRoutes.songsScreen);
      },
      child: Container(
        margin:EdgeInsets.only(right:10),
        child: Stack(
          alignment:Alignment.bottomCenter,
          children: [
            Container(
              width:MediaQuery.of(context).size.width*0.45,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                      fit:BoxFit.cover,
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"))),
            ),
            Container(
              padding:EdgeInsets.only(left:5),
              margin:EdgeInsets.only(bottom:10),
              height:50,
              width:MediaQuery.of(context).size.width*0.37,
              decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                color:Colors.white.withOpacity(0.5),
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SectionHeader(title: "Romantic",color:Colors.deepPurple,fontSize:15,),
                      SectionHeader(title: "Love",color:Colors.white,fontSize:15,),
                    ],
                  ),
                  IconButton(onPressed:(){}, icon:Icon(CupertinoIcons.play_fill,color:Colors.deepPurple,))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
