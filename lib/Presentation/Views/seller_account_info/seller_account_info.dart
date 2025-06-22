import 'package:contr_project/Presentation/Views/seller_account_info/account_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SellerAccountInfo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title : Text(
        'Account Information',
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
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30,),
        AccountInfo(title: 'Company Name', subtitle: 'Extrabread Sdn Bhd', edit: 'Edit'),
        AccountInfo(title: 'Business Registration Number', subtitle: '1512778-U', edit: 'Edit'),
        AccountInfo(title: 'Business Nature', subtitle: 'Retail', edit: 'Edit'),
        AccountInfo(title: 'Contact Person', subtitle: 'Wesley Teoh', edit: 'Edit'),
        SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Container(
            width: double.infinity,
            height: 56,
            child: ElevatedButton(onPressed: (){}, child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/Check.png', width:24 , height:24 ),
                SizedBox(width: 4,),
                Text('This account is verified since 04/06/2024.', style: TextStyle(fontSize: 14,
                  fontWeight: FontWeight.w400, color: Color(0xffFFFFFF),
                ),
                ),

              ],
            ),
              style: ElevatedButton.styleFrom(backgroundColor: Color(0xff0CC67C),

              ),
              ),
            ),
        ),

      ],
    );
  }
}