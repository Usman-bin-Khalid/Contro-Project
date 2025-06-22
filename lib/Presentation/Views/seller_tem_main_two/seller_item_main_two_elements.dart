import 'package:contr_project/ModelClass/QR_code.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SellerItemMainTwoElements extends StatefulWidget{
  final QrCode itemselements;

  const SellerItemMainTwoElements({super.key, required this.itemselements});

  @override
  State<SellerItemMainTwoElements> createState() => _SellerItemMainTwoElementsState();
}

class _SellerItemMainTwoElementsState extends State<SellerItemMainTwoElements> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
       return Padding(
         padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
         child: Row(
           children: [
             Image.asset(widget.itemselements.img.toString(), width: 56, height: 56,),
             SizedBox(width: 10,),
             Expanded(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [

                   Text(widget.itemselements.title.toString(), style: TextStyle(
                     fontSize: 14, fontWeight: FontWeight.w400 , color: Color(0xff27262A),
                   ),),
                   Text(widget.itemselements.subtitle.toString(), style: TextStyle(
                     fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff919191)
                   ),),
                   Text(widget.itemselements.order.toString(), style: TextStyle(fontSize:14 , fontWeight: FontWeight.w400,
                   color: Color(0xffFF9A6F)),),
                   Text(widget.itemselements.votes.toString(), style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                   color: Color(0xff27262A)),)
                 ],
               ),
             ),
             Container(
               child: FlutterSwitch(
                 width: 75.0,
                 height: 25.0,
                 valueFontSize: 9.0,
                 toggleSize: 15.0,
                 value: status,
                 borderRadius: 30.0,
                 padding: 6.0,
                 showOnOff: true,
                 onToggle: (val) {
                   setState(() {
                     status = val;
                   });
                 },
               ),
             ),
           ],
         ),
       );
  }
}