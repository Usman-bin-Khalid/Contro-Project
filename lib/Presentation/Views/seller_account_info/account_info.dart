import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountInfo extends StatelessWidget{
  final String title;
  final String subtitle;
  final String edit;

  const AccountInfo({super.key, required this.title, required this.subtitle, required this.edit});
  @override
  Widget build(BuildContext context) {
     return ListTile(
       title: Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff27262A)),),
       subtitle: Padding(
         padding: const EdgeInsets.only(left: 10, bottom: 50, top: 20),
         child: Text(subtitle, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff919191)),),
       ),
       trailing: Text(edit, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff007AFF)),),
     );
  }
  
}