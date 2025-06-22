import 'package:contr_project/Presentation/Views/seller_withdraw_addbank/seller_withdraw_addbank.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SellerWithdraw extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title : Text(
        'Withdrawal',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: Color(0xff27262A),
        ),
      ),),
      body:  _getBody(context),
    );
  }
  Widget _getBody(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: Text('Withdrawal Amount (RM)', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,
          color: Color(0xff27262A),
          ),),
        ),
        SizedBox(height: 20,),
        ListTile(
          title: Text('0.00', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
          color: Color(0xff919191)
          ),),
          trailing: Text('Max', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,
              color: Color(0xff007AFF)),),
        ),
        SizedBox(height: 5,),
        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: Text('Available Balance : RM 888,000.00',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff919191)),),
        ),
        SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: Text('Bank Details', style: TextStyle
            (fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff27262A)),),
        ),
        SizedBox(height: 20,),
        ListTile(
          title: Text('Maybank Berhad (Account No: ********2098)', style: TextStyle
            (fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff27262A)),),
          trailing: Image.asset('assets/images/arrowright.png', width: 12, height: 12,),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SellerWithdrawAddbank(),));
                  }, child: Center(
                    child: Text('Withdraw', style: TextStyle(fontSize: 16,
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