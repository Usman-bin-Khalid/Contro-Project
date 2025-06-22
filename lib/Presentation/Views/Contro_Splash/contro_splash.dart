import 'dart:async';

import 'package:contr_project/Presentation/Views/contro_entermobile/contro_entermobile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ControSplash extends StatefulWidget{
  @override
  State<ControSplash> createState() => _ControSplashState();
}

class _ControSplashState extends State<ControSplash> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ControEntermobile()),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: _getBody(context),
     );
  }

  Widget _getBody(BuildContext context){
    return Container(
      width: double.infinity,
       height: double.infinity,
       decoration: BoxDecoration(
         gradient: LinearGradient(
           colors: [
            Color(0xff622CEA),
            Color(0xff5A27D9),
             Color(0xff5524CE),
             Color(0xff411B9F),
             Color(0xff371984),
           ]
         ),
       ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Image.asset('assets/images/logo.png', width:100 , height:100 ,),
          SizedBox(height: 12,),
          Text('contro', style: TextStyle(fontSize: 36 , fontWeight: FontWeight.w800, color: Color(0xffF5F6F8)),),
          SizedBox(height: 12,),
          Text('Make it happen', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xffFCE75D) ),),

        ],
      ),
    );
  }
}