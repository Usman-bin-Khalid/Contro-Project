import 'package:contr_project/ModelClass/QR_code.dart';
import 'package:flutter/cupertino.dart';

class SellerFinanceElements extends StatelessWidget{
  final QrCode sellerelements;

  const SellerFinanceElements({super.key, required this.sellerelements});
  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
     child: Row(

       children: [
         Image.asset(sellerelements.img.toString(), width: 36, height: 36,),

         Padding(
           padding: const EdgeInsets.only(left: 10),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(sellerelements.title.toString(), style:
               TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Color(0xff27262A)),),
               Text(sellerelements.subtitle.toString(), style: TextStyle(fontSize:14 , fontWeight: FontWeight.w400,
               color: Color(0xff06A0F0)
               ),),
               Text(sellerelements.order.toString(), style: TextStyle(fontSize: 14,
                   fontWeight: FontWeight.w400, color: Color(0xff919191)),),
             ],
           ),
         ),



         Expanded(
           child: Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Text(sellerelements.votes.toString(), style: TextStyle(fontSize:16 ,
               fontWeight: FontWeight.w400, color: Color(0xff0CC67C)
               ),),
             ],
           ),
         )

       ],
     ),
   );
  }

}