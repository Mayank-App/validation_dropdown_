 import 'package:assignment_7/setUpProfile/textForm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drop_down.dart';

class ProfileSet extends StatefulWidget {  @override
  State<ProfileSet> createState() => _ProfileSetState();
}

class _ProfileSetState extends State<ProfileSet> {
  TextEditingController userName = TextEditingController();
  TextEditingController eMail = TextEditingController();
  TextEditingController nUMBER = TextEditingController();
  TextEditingController lOcation = TextEditingController();
  TextEditingController gEnder = TextEditingController();
  TextEditingController course = TextEditingController();
  final formKey = GlobalKey<FormState>();
//  double width = 50;

  List<String> gender=["Male","Female"];
   List<String>  location=["GHAZIABAD","GORAKHPUR","GONDA","GHAZIPUR","AYYODHYA","NOIDA"];
   List<String> handi=["0","1","2","3","4","5","7""8","9","10"];
   List<String> nationality=["INDIA","ENGLAND","JAPAN","AUSTRILIA","PAKISTAN","NAGALAND","SOUTH AFFRICA"];
   List<String> date =["01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","20","21","22","23","24","25","26","27","28","29","30","31"];
   List <String> month=["01","02","03","04","05","06","07","08","09","10","11","12"];
   List <String> year=["2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","2011","2012","2013","2014","2015","2016","2017","2018","2019","2020","2021","2022","2023","2024","2025","2026"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          margin: EdgeInsets.only(left: 30, right: 30, top: 50),
            child: Form(
              key: formKey,
              child: ListView(
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
               // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Text("Setup Your Profile",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Center(
                child: Stack(
                    children:[
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/image11.webp"),
                        radius:50 ,
                      ),
                      Positioned(
                        left: 76,
                        top: 70,
                        child: CircleAvatar( radius: 12,
                            backgroundColor: Colors.green,
                            child: Icon(Icons.edit,color: Colors.white,size: 15,)),
                      )
                    ]
                ),
              ),
              SizedBox(height: 20,),
              CustomFormText(text: "Full Name",
                hintText: "Enter User Name",controller: userName,obsuredText: false,),
              SizedBox(height: 10,),
              CustomFormText(text: "Email",
                hintText: "Enter User Name",controller: eMail,obsuredText: false,),
              SizedBox(height: 10,),
              CustomFormText(text: "Phone Number",
                hintText: "Enter Mobile Number",controller: nUMBER,obsuredText: false,),
              MyDropdownWidget(
                    option:gender,text: "Gender",hint: "Select",
              ),
              MyDropdownWidget(
              option:location,text: "Location", hint: "Select",
              ),
              MyDropdownWidget(
              option:handi,text: "Handicap",wIDTH: 120,hint: "Select",
              ),
              Row(
                children: [
                  MyDropdownWidget(
                    option:date,text: "DOB",hint: "DD",wIDTH: 90,
                  ),
                  SizedBox(width: 15,),
                  MyDropdownWidget(
                    option:month,text: " ",hint: "MM",wIDTH: 90,
                  ),
                  SizedBox(width: 15,),
                  MyDropdownWidget(
                    option:year,text: " ",hint: "YY",wIDTH: 100,
                  ),
                ],
              ),
              MyDropdownWidget(
              option:nationality,text: "Nationality",hint: "Select",
              ),
              CustomFormText(text: "Home Golf Course (Optional)",
              hintText: "Enter home golf course",controller: course,obsuredText: false,),
              SizedBox(height: 20,),
              Center(
              child: SizedBox(
                height: 50,
                width: 250,
                child: ElevatedButton(onPressed: (){
                  formKey.currentState!.validate();
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child:Text("CONTINUE",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)

                ),
              ),
              ),


          ],
        ),
            ))
    )


        ;
  }
}
