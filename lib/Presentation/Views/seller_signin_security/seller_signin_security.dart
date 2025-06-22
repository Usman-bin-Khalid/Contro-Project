import 'package:contr_project/ModelClass/QR_code.dart';
import 'package:contr_project/Presentation/Views/seller_account_info/account_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SellerSigninSecurity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar( title : Text(
         'Sign in & Security',
         style: TextStyle(
           fontSize: 24,
           fontWeight: FontWeight.w600,
           color: Color(0xff27262A),
         ),
       ),),
       body: _getBody(context),
     );
  }
  Widget _getBody(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30,),
        AccountInfo(title: 'Phone Number', subtitle: '+60*****5557', edit: 'Edit'),
        AccountInfo(title: 'Email', subtitle: 'wesley@contro.me', edit: 'Edit'),
        ListTile(
          title: Text('Change Password', style: TextStyle(fontSize: 16,
              fontWeight: FontWeight.w400, color: Color(0xff007AFF)),),
          trailing: IconButton(onPressed: (){}, icon: Image.asset
            ('assets/images/arrowright.png', width: 12, height: 12,)),
        ),
        SizedBox(height: 37,),
        ListTile(
          title: Text('Face ID & Passcode', style: TextStyle(fontSize: 16,
              fontWeight: FontWeight.w400, color: Color(0xff27262A)),),
          trailing: IconButton(onPressed: (){}, icon: Image.asset
            ('assets/images/arrowright.png', width: 12, height: 12,)),
        ),
      ],
    );
  }
}