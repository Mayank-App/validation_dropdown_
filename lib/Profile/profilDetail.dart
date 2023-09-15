import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/profile_details.dart';

class  ProfilDetail extends StatelessWidget {

  @override
  Widget build (BuildContext context) {
    return Scaffold(
     body: InkWell(
       onTap: (){
         showModalBottomSheet(context: context,enableDrag: true,shape: RoundedRectangleBorder(), showDragHandle: true,builder: (context)
         {
           return ProfileDetails();
         });
       },
       child: Container(
         height: MediaQuery.of(context).size.height *0.8,
           margin: EdgeInsets.only(left: 15,right: 15,top: 20),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.only(topRight:Radius.circular(20),topLeft:Radius.circular(20), bottomLeft:Radius.circular(20),bottomRight: Radius.circular(20)  ),
             image: DecorationImage(
            fit: BoxFit.fitHeight,
               image: AssetImage("assets/images/Yuvraj.jpeg"),
             )
           ),
       ),
     ),
    );

  }
}
