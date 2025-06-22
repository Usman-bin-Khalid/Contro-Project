import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

void main(){
  for(int i = 1; i <=10; i++){
    print("25 *$i= ${i*25}");
  }
}

  class CodingFile extends StatefulWidget{
  @override
  State<CodingFile> createState() => _CodingFileState();
}

class _CodingFileState extends State<CodingFile> {
  bool status = true;
  bool _isTapped = false;
  void toggleIconColor(){
    _isTapped = !_isTapped;
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text('Toggle Button', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),),
       body: _getBody(context),
     );
  }

     Widget _getBody(BuildContext context){
    return Column(
      children: [
        // FlutterSwitch(
        //     width: 155,
        //     height: 55,
        //     toggleSize: 45,
        //     valueFontSize: 16,
        //     showOnOff: true,
        //     padding: 8,
        //     borderRadius: 30,
        //     value: status, onToggle: (val){
        //   setState(() {
        //     status = val;
        //   });
        // }),

         Row(
           children: [
             ...List.generate(6, (index) =>
              Expanded(
                child: Container(
                  height: 42.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),

                  ),
                  margin: EdgeInsets.symmetric(horizontal: 6),
                ),
              )
             )
           ],
         ),



      ],
    );
     }
}