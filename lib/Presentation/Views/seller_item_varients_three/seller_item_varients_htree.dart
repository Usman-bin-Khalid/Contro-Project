import 'package:contr_project/Presentation/Views/seller_item_add_item_simple/seller_item_add_item_simple.dart';
import 'package:contr_project/Presentation/Views/seller_item_varients_list/seller_item_varients_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SellerItemVarientsthree extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text(
           'Create Variations',
           style: TextStyle(
             fontSize: 24,
             fontWeight: FontWeight.w600,
             color: Color(0xff27262A),
           ),
         ),
         leading: InkWell(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => SellerItemAddItemSimple(),));
             },
             child: Icon(Icons.cancel_outlined)),
       ),
       body: _getBody(context),
     );
  }
    Widget _getBody(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset(
              'assets/images/Module.png',
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        ListTile(
          title: Text(
            'Variation Name',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff27262A),
            ),
          ),
          trailing: Image.asset('assets/images/delicon.png', width: 18, height: 18,),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32),
          child: Text(
            'Enter Variation (eg. Colour, Size, Flavours, etc.) ',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff919191)),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        ListTile(
          title: Text(
            'Option',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff27262A)),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32, right: 22),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Enter Option', style: TextStyle(fontSize: 14,
                  fontWeight: FontWeight.w400, color: Color(0xff919191)),),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('assets/images/photo.png', width: 18, height: 18,),
                  SizedBox(width: 5,),
                  Image.asset('assets/images/icon (9).png', width:18 , height: 18,),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 32, right: 22),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Enter Option', style: TextStyle(fontSize: 14,
                  fontWeight: FontWeight.w400, color: Color(0xff919191)),),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset('assets/images/photo.png', width: 18, height: 18,),
                  SizedBox(width: 5,),
                  Image.asset('assets/images/icon (9).png', width:18 , height: 18,),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: ListTile(
            leading: Image.asset('assets/images/circle-plus (1).png', width: 18 , height: 18,),
            title: Text('Add Option', style: TextStyle(fontSize:14 , fontWeight: FontWeight.w400,
              color: Color(0xff919191),
            ),),
          ),
        ),

        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  height: 48,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 165,
                        child: ElevatedButton(onPressed: (){

                        }, child: Text('Add Variation', style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.w400, color: Color(0xff622CEA),
                        ),
                          textAlign: TextAlign.center,),
                          style: ElevatedButton.styleFrom(backgroundColor: Color(0xffFFFFFF),
                            elevation: 0,
                            side: BorderSide(color: Color(0xff622CEA), width: 1),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),

                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 165,
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SellerItemVarientsList(),));
                        }, child: Text('Next', style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.w400, color: Color(0xffFFFFFF),
                        ),
                          textAlign: TextAlign.center,),
                          style: ElevatedButton.styleFrom(backgroundColor: Color(0xff622CEA),
                            elevation: 0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),

                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 7,),
            ],

          ),
        ),
      ],
    );
    }
}