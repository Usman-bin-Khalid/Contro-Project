import 'package:contr_project/ModelClass/QR_code.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SellerStudioLocation extends StatelessWidget{
  final QrCode list;

  const SellerStudioLocation({super.key, required this.list});
  
  @override
  Widget build(BuildContext context) {
     return ListTile(
       title: Text(list.title.toString(), style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
       color: Color(0xff27262A)),),
       subtitle: Text(list.subtitle.toString(), style: TextStyle(fontSize:14 , fontWeight: FontWeight.w400,
       color: Color(0xff919191)),),
       trailing: Image.asset(list.img.toString(), width: 32,height: 32,),
     );
  }
  
}