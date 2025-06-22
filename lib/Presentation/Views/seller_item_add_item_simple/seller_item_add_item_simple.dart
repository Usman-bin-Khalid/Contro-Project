import 'package:contr_project/Presentation/Views/seller_items_varients/seller_item_varients.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SellerItemAddItemSimple extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Add New Item', style: TextStyle(fontSize:24 , fontWeight: FontWeight.w600,
          color: Color(0xff27262A)
          ),),
        ),
        body: _getBody(context),
      );
  }
  Widget _getBody(BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text('Media', style: TextStyle(fontSize:16 , fontWeight: FontWeight.w400, color: Color(0xff27262A)),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 34),
            child: ListTile(leading: Image.asset('assets/images/polaroid.png', width: 24, height: 24,),
            title: Text('Upload 5 or more images/videos to get more exposure and sales opportunities.', style: TextStyle
              (fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff919191)),),
            ),
          ),
          SizedBox(height: 26,),

          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text('Category', style: TextStyle(fontSize:16 , fontWeight: FontWeight.w400, color: Color(0xff27262A)),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 34),
            child: ListTile(trailing: Image.asset('assets/images/arrowright.png', width: 12, height: 12,),
              title: Text('Choose', style: TextStyle
                (fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff27262A)),),
            ),
          ),
          SizedBox(height: 26,),

           Padding(
             padding: const EdgeInsets.only(left: 22),
             child: Text('Item Details', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xff27262A)),),
           ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: ListTile(leading: Text('Product Name', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,
            color: Color(0xff27262A)
            ),),
            trailing: Text('0/120', style: TextStyle(fontSize:14 , fontWeight: FontWeight.w400, color: Color(0xff919191)),),
            )
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 34),
            child: ListTile(
              title: Text('Enter Product Name', style: TextStyle
                (fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff919191)),),
            ),
          ),

          SizedBox(height: 26,),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text('SKU', style: TextStyle(fontSize:16 , fontWeight: FontWeight.w400, color: Color(0xff27262A)),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 34),
            child: ListTile(
              title: Text('Enter SKU', style: TextStyle
                (fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff919191)),),
            ),
          ),


          SizedBox(height: 26,),


          Padding(
            padding: const EdgeInsets.only(left: 32, right: 34),
            child: ListTile(trailing: Text('0/1000', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
            color: Color(0xff919191)
            ),),
              title: Text('Description', style: TextStyle
                (fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff27262A)),),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 35, right: 32),
            child: Text('Enter Description. Try out our new AI tool to help you to bring your product to life.', style:
            TextStyle(fontSize:14 , fontWeight: FontWeight.w400, color: Color(0xff919191)),
            textAlign: TextAlign.center,),
          ),
          SizedBox(height: 15,),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  height:48,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SellerItemVarients(),));
                  }, child: Center(
                    child: Text('Submit for review', style: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.w400, color: Color(0xff919191),
                    ),
                    ),
                  ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                        backgroundColor: Color(0xffF4F4F4),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)
                        )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 7,),
            ],
          ),
        ],
      ),
    );
  }
}