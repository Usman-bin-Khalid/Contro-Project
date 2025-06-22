import 'package:contr_project/Presentation/Views/seller_withdraw/seller_withdraw.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SellerWithdrawAddbankTwo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text(
           'Add Bank Account',
           style: TextStyle(
             fontSize: 24,
             fontWeight: FontWeight.w600,
             color: Color(0xff27262A),
           ),
         ),
         leading: IconButton(onPressed: (){
           Navigator.push(
               context,
               MaterialPageRoute(
                 builder: (context) => SellerWithdraw(),
               ));
         }, icon: Icon(Icons.cancel_outlined)),
       ),
       body: _getBody(context),
     );
  }
   Widget _getBody(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: Text('Payment Type', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff27262A)),),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 32, right: 22),
          child: ListTile(
            title: Text('FPX', style: TextStyle(fontSize:14 , fontWeight: FontWeight.w400,
            color: Color(0xff27262A)
            ),),
            trailing: Image.asset('assets/images/arrowright.png', width: 12 , height: 12,),
          ),
        ),
        SizedBox(height: 40,),

        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: Text('Bank Name', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff27262A)),),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 32, right: 22),
          child: ListTile(
            title: Text('Choose a Bank', style: TextStyle(fontSize:14 , fontWeight: FontWeight.w400,
                color: Color(0xff27262A)
            ),),
            trailing: Image.asset('assets/images/arrowright.png', width: 12 , height: 12,),
          ),
        ),
        SizedBox(height: 40,),

        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: Text('Account Name', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff27262A)),),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 32, right: 22),
          child: ListTile(
            title: Text('Enter Account Name', style: TextStyle(fontSize:14 , fontWeight: FontWeight.w400,
                color: Color(0xff27262A)
            ),),
          ),
        ),
        SizedBox(height: 40,),

        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: Text('Account Number', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff27262A)),),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 32, right: 22),
          child: ListTile(
            title: Text('Enter Account Number', style: TextStyle(fontSize:14 , fontWeight: FontWeight.w400,
                color: Color(0xff27262A)
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
                  height:48,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SellerWithdraw(),));
                  }, child: Center(
                    child: Text('Done', style: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.w400, color: Color(0xffFFFFFF),
                    ),
                    ),
                  ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff622CEA),
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