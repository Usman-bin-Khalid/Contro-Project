import 'package:contr_project/Presentation/Views/seller_item_main/seller_item_main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SellerItemTheme extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text('Themes', style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,
       color: Color(0xff27262A),
       ),),),
           body: _getBody(context),
     );
  }
  Widget _getBody(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 35, top: 10, bottom: 20, right: 35),
          child: Image.asset('assets/images/Artboard.png',),
        ),
        // Text('Default Theme', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, 
        //     color: Color(0xff27262A)),),
        Center(
          child: RichText(text: TextSpan(
            children: [
             TextSpan( text: 'Default Theme', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
             color: Color(0xff27262A),
             ), ),
             TextSpan(text: ' by Contro.', style: TextStyle(fontSize:13 , fontWeight: FontWeight.w300,
             color: Color(0xff919191)
             )),
            ],
          ) ,
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
                  height:48,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SellerItemMain(),));
                  }, child: Center(
                    child: Text('Cancel', style: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.w400, color: Color(0xffFFFFFF),
                    ),
                    ),
                  ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff27262A),
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
        ),
      ],
    );
  }
}