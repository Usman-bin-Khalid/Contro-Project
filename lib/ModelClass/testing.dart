import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReusableWidget extends StatelessWidget{
  final String img;
  final String title;
  final bool showArrow;
  final VoidCallback onTap;

  const ReusableWidget({super.key, required this.img, required this.title, required this.showArrow, required this.onTap});

  @override
  Widget build(BuildContext context) {
      return ListTile(
        leading: Image.asset(img, width:24,height: 24,),
        title: Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff27262A)),),
        trailing: IconButton(onPressed: onTap, icon: Image.asset('assets/images/arrowright.png',
        width: 12, height: 12,
        )),
      );
  }

}