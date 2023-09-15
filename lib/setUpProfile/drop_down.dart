import 'package:flutter/material.dart';
class MyDropdownWidget extends StatefulWidget {
  final  String text;
  final List <String?> option;
  final double ? wIDTH;
  final String hint;
  MyDropdownWidget(
  {
  required  this.text,
  required this.option,
    this.wIDTH,
    required this.hint
  }
  );

  @override
  _MyDropdownWidgetState createState() => _MyDropdownWidgetState();
}

class _MyDropdownWidgetState extends State<MyDropdownWidget> {
  String? validator(val){
      if(val == null ){
        return " Please Select Requirement";
      }
      else{
      return null;}

  }

  @override
  Widget build(BuildContext context) {
    String? selectedOption;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.text,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple,fontSize: 15),),
        SizedBox(height: 10,),
        Container(
           width: (widget.wIDTH == null)? double.infinity: widget.wIDTH,
              height: 80,
              child: DropdownButtonFormField<String>(
                  validator: (value) {
                 return validator(value);
           },
                  value: selectedOption,
                  isExpanded: true,
                isDense: true,
                decoration: InputDecoration(
             contentPadding: EdgeInsets.all(8),
                  hintText: widget.hint,
             helperText: " ",

           border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: Colors.black26, width: 2),
                ),
              focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
             borderSide: BorderSide(color: Colors.blueGrey, width: 2),
              ),
                ),

                  onChanged: (newValue){
                    setState(() {
                      selectedOption = newValue!;
                    });
                  },
                  items: widget.option.map((options){
                    return DropdownMenuItem<String>(
                      value: options,
                      child:  Text(options!, style: TextStyle(color: Colors.grey.shade700),),

                    );
                  }).toList(),

                ),
        ),
      ],
    );
  }
}

