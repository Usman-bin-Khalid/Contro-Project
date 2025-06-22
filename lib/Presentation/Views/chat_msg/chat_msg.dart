import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatMsg extends StatelessWidget{
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Row(
           children: [
             Image.asset('assets/images/chatingimg.png', width:36 , height:36 ,),
             SizedBox(width: 10,),
             Text('+6012 777 8888', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,
                 color: Color(0xff27262A)),),
           ],
         ),
       ),
       body: _getBody(context),
     );
  }
    Widget _getBody(BuildContext context){
     return SingleChildScrollView(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           
           SizedBox(
             height: 40,
           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 12),
             child: Container(
               height: 53,
               child: TextField(
                 controller: searchController,
                 keyboardType: TextInputType.text,
                 decoration: InputDecoration(
                   prefixIcon: Icon(Icons.search_rounded),
                   suffixIcon: Icon(Icons.add),
                   label: Text(
                     'Search',
                     style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.w400,
                         color: Color(0xff27262A)),
                     textAlign: TextAlign.center,
                   ),
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(12),
                   ),
                 ),
               ),
             ),
           ),
           SizedBox(height: 25,),
       
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
             child: Row(
       
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/controLogo.png', width: 56, height: 56,),
                  SizedBox(width: 5,),
                  Expanded(
                    child: Column(
                    
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Contro', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                        Text('Would you like to upgrade product. Please b...', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),)
                      ],
                    ),
                  ),
                  Column(
       
                    children: [
                      Text('12:00 AM', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),
                    ],
                  ),
                ],
             ),
       
           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
             child: Row(
               // mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Image.asset('assets/images/chatimg2.png', width: 56, height: 56,),
                 SizedBox(width: 5,),
                 Expanded(
                   child: Column(
                     // mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('+6012 777 8888', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                       color: Color(0xff27262A)),),
                       Text('Do you have XL and able to customise my size?', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                       color: Color(0xff919191)),),
                     ],
                   ),
                 ),
                 Column(
                   // mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text('11:00 AM', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff919191)),),
                   ],
                 ),
               ],
             ),
       
           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
             child: Row(
               // mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Image.asset('assets/images/chatimg3.png', width: 56, height: 56,),
                 SizedBox(width: 5,),
                 Expanded(
                   child: Column(
                     // mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('+6011 600 3333', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                       color: Color(0xff27262A)),),
                       Text('[Product]', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                       color: Color(0xff919191)),),
                     ],
                   ),
                 ),
                 Column(
                   // mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text('Yesterday', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff919191)),),
                   ],
                 ),
               ],
             ),
       
           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
             child: Row(
               // mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Image.asset('assets/images/announcement.png', width: 56, height: 56,),
                 SizedBox(width: 5,),
                 Expanded(
                   child: Column(
                     // mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('Service Announcement', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                       color: Color(0xff27262A)),),
                       Text('New Coupons Available for Grab! ', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                       color: Color(0xff919191)),),
                     ],
                   ),
                 ),
                 Column(
                   // mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text('Yesterday', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff919191)),),
                   ],
                 ),
               ],
             ),
       
           ),

           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
             child: Row(

               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Image.asset('assets/images/controLogo.png', width: 56, height: 56,),
                 SizedBox(width: 5,),
                 Expanded(
                   child: Column(

                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('Contro', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                       Text('Would you like to upgrade product. Please b...', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),)
                     ],
                   ),
                 ),
                 Column(

                   children: [
                     Text('12:00 AM', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),
                   ],
                 ),
               ],
             ),

           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
             child: Row(
               // mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Image.asset('assets/images/chatimg2.png', width: 56, height: 56,),
                 SizedBox(width: 5,),
                 Expanded(
                   child: Column(
                     // mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('+6012 777 8888', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                           color: Color(0xff27262A)),),
                       Text('Do you have XL and able to customise my size?', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                           color: Color(0xff919191)),),
                     ],
                   ),
                 ),
                 Column(
                   // mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text('11:00 AM', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff919191)),),
                   ],
                 ),
               ],
             ),

           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
             child: Row(
               // mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Image.asset('assets/images/chatimg3.png', width: 56, height: 56,),
                 SizedBox(width: 5,),
                 Expanded(
                   child: Column(
                     // mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('+6011 600 3333', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                           color: Color(0xff27262A)),),
                       Text('[Product]', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                           color: Color(0xff919191)),),
                     ],
                   ),
                 ),
                 Column(
                   // mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text('Yesterday', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff919191)),),
                   ],
                 ),
               ],
             ),

           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
             child: Row(
               // mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Image.asset('assets/images/announcement.png', width: 56, height: 56,),
                 SizedBox(width: 5,),
                 Expanded(
                   child: Column(
                     // mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('Service Announcement', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                           color: Color(0xff27262A)),),
                       Text('New Coupons Available for Grab! ', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                           color: Color(0xff919191)),),
                     ],
                   ),
                 ),
                 Column(
                   // mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text('Yesterday', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff919191)),),
                   ],
                 ),
               ],
             ),

           ),


           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
             child: Row(

               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Image.asset('assets/images/controLogo.png', width: 56, height: 56,),
                 SizedBox(width: 5,),
                 Expanded(
                   child: Column(

                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('Contro', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                       Text('Would you like to upgrade product. Please b...', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),)
                     ],
                   ),
                 ),
                 Column(

                   children: [
                     Text('12:00 AM', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),
                   ],
                 ),
               ],
             ),

           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
             child: Row(
               // mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Image.asset('assets/images/chatimg2.png', width: 56, height: 56,),
                 SizedBox(width: 5,),
                 Expanded(
                   child: Column(
                     // mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('+6012 777 8888', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                           color: Color(0xff27262A)),),
                       Text('Do you have XL and able to customise my size?', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                           color: Color(0xff919191)),),
                     ],
                   ),
                 ),
                 Column(
                   // mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text('11:00 AM', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff919191)),),
                   ],
                 ),
               ],
             ),

           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
             child: Row(
               // mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Image.asset('assets/images/chatimg3.png', width: 56, height: 56,),
                 SizedBox(width: 5,),
                 Expanded(
                   child: Column(
                     // mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('+6011 600 3333', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                           color: Color(0xff27262A)),),
                       Text('[Product]', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                           color: Color(0xff919191)),),
                     ],
                   ),
                 ),
                 Column(
                   // mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text('Yesterday', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff919191)),),
                   ],
                 ),
               ],
             ),

           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
             child: Row(
               // mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Image.asset('assets/images/announcement.png', width: 56, height: 56,),
                 SizedBox(width: 5,),
                 Expanded(
                   child: Column(
                     // mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('Service Announcement', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                           color: Color(0xff27262A)),),
                       Text('New Coupons Available for Grab! ', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                           color: Color(0xff919191)),),
                     ],
                   ),
                 ),
                 Column(
                   // mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text('Yesterday', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff919191)),),
                   ],
                 ),
               ],
             ),

           ),

           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
             child: Row(

               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Image.asset('assets/images/controLogo.png', width: 56, height: 56,),
                 SizedBox(width: 5,),
                 Expanded(
                   child: Column(

                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('Contro', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                       Text('Would you like to upgrade product. Please b...', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),)
                     ],
                   ),
                 ),
                 Column(

                   children: [
                     Text('12:00 AM', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),
                   ],
                 ),
               ],
             ),

           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
             child: Row(
               // mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Image.asset('assets/images/chatimg2.png', width: 56, height: 56,),
                 SizedBox(width: 5,),
                 Expanded(
                   child: Column(
                     // mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('+6012 777 8888', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                           color: Color(0xff27262A)),),
                       Text('Do you have XL and able to customise my size?', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                           color: Color(0xff919191)),),
                     ],
                   ),
                 ),
                 Column(
                   // mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text('11:00 AM', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff919191)),),
                   ],
                 ),
               ],
             ),

           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
             child: Row(
               // mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Image.asset('assets/images/chatimg3.png', width: 56, height: 56,),
                 SizedBox(width: 5,),
                 Expanded(
                   child: Column(
                     // mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('+6011 600 3333', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                           color: Color(0xff27262A)),),
                       Text('[Product]', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                           color: Color(0xff919191)),),
                     ],
                   ),
                 ),
                 Column(
                   // mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text('Yesterday', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff919191)),),
                   ],
                 ),
               ],
             ),

           ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
             child: Row(
               // mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Image.asset('assets/images/announcement.png', width: 56, height: 56,),
                 SizedBox(width: 5,),
                 Expanded(
                   child: Column(
                     // mainAxisAlignment: MainAxisAlignment.start,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('Service Announcement', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                           color: Color(0xff27262A)),),
                       Text('New Coupons Available for Grab! ', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                           color: Color(0xff919191)),),
                     ],
                   ),
                 ),
                 Column(
                   // mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text('Yesterday', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff919191)),),
                   ],
                 ),
               ],
             ),

           ),
         ],
       ),
     );
    }
}