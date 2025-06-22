import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Tgo extends StatefulWidget{
  @override
  State<Tgo> createState() => _TgoState();
}

class _TgoState extends State<Tgo> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text('Custom Button'),),
       body:  Column(
         children: [
           Center(
               child: Container(
               child: FlutterSwitch(
               width: 125.0,
               height: 55.0,
               valueFontSize: 25.0,
               toggleSize: 45.0,
               value: status,
               borderRadius: 30.0,
               padding: 8.0,
               showOnOff: true,
               onToggle: (val) {
               setState(() {
               status = val;
               })
               ;
               },
               ),
               ),
           ),
           FlutterSwitch(
             width: 155,
             height: 29,
             valueFontSize: 25,
             toggleSize: 45,
             value: status,
             borderRadius: 30,
             padding: 8,
             showOnOff: true,
             onToggle: (val){
               setState(() {
                 status = val;
               });
             },
           ),

         ],
       ),


     );

  }
}

