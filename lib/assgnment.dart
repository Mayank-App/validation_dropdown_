import 'package:assignment_7/Profile/profilDetail.dart';
import 'package:assignment_7/setUpProfile/profileSet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Assignment extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(
                onPressed: (){
  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilDetail()));
                },
                child: Text("Screen1",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileSet()));

                },
                child: Text("Screen2",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ),
      )
      ,
    );

  }
}
