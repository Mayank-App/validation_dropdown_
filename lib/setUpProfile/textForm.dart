import 'package:flutter/material.dart';
import 'package:select_form_field/select_form_field.dart';
class CustomFormText extends StatefulWidget{
  final String text ;
  final Icon ? icon;
  final String hintText;
  final TextEditingController controller;
  final   bool  obsuredText;
  const CustomFormText({super.key,
    required this.text,
     this.icon,
    required this .hintText,
    required this.controller,
    required  this.obsuredText,
  }
      );

  @override
  State<CustomFormText> createState() => _CustomFormTextState();
}

class _CustomFormTextState extends State<CustomFormText> {
  String ? validator(String ?val){
    if(widget.text =="Full Name"){
      return userNameValidator(val);
    }
    else if (widget.text=="Phone Number"){
      return mobileValidator(val);
    }
    else if(widget.text=="Email"){
      return emailValidator(val);
    }
    else if (widget.text=="Home Golf Course (Optional"){
          return golfValidator(val);
    }

  }
  String ? golfValidator( String ? val){
    if(val!.isEmpty){
      return " Please Enter the Name";
    }
    return null;
  }
 String ? userNameValidator( String ? val){
    if(val!.isEmpty){
      return " Please Enter the Name";
    }
    return null;
  }
  String ? mobileValidator(String ? val){
    String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(patttern);
    if (val!.length == 0) {
      return 'Please enter mobile number';
    }
    else if (val.length!=10){
      return "Enter 10 digit number";
    }
    else if (!regExp.hasMatch(val!)) {
      return 'Please enter valid mobile number';
    }
    return null ;
  }

  String ? emailValidator(String ?val){
    // int atIndex =0;
    // int dotIndex=0;
    if(val!.isEmpty) return "Please Enter Email";
    // for(int i=0;i<=val!.length;i++){
    //     if(val[i]=="@"){
    //       atIndex =i;
    //     }
    //     else if(val[i]=="."){
    //       dotIndex==i;
    //     }
    // }
    // if(atIndex==0 ||dotIndex== 0 || (atIndex-dotIndex)>0){
    //  return " Please Enter valid  email ";
    // }
    if(!(val!.contains("@"))){
      return " Please use @ in email";
    }

  }
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.text,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple,fontSize: 15),),
        SizedBox(height: 10,),
        Container(
            height: 70,
          child: TextFormField(
            obscureText: widget.obsuredText,
            controller: widget.controller,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              return validator(value);
            },
            decoration: InputDecoration(
              hintText: widget.hintText,
              helperText: " ",
              suffixIcon: widget.icon,
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: Colors.blueGrey,
                      width: 1.5
                  )
              ),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: Colors.black26,
                      width: 1
                  )
              ),
            ),
          ),
        ),


      ],

    )

    ;
  }
}