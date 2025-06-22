import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WithdrawWidget extends StatelessWidget{
  final String img;
  final String title;
  final String subtitle;

  const WithdrawWidget({super.key, required this.img, required this.title, required this.subtitle});
  @override
  Widget build(BuildContext context) {
       return Padding(
         padding: const EdgeInsets.only(left: 33, bottom: 20),
         child: ListTile(
           leading: Image.asset(img, width: 36, height:36 ,),
           title: Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff27262A)),),
           subtitle: Text(subtitle, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xff919191) ),),
         ),
       );
  }
  
}