import 'package:contr_project/Presentation/Views/seller_withdraw/seller_withdraw.dart';
import 'package:contr_project/Presentation/Views/seller_withdraw_addbank/withdraw_widget.dart';
import 'package:contr_project/Presentation/Views/seller_withdraw_addbank_two/seller_withdraw_addbank_two.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SellerWithdrawAddbank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bank Account',
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

  Widget _getBody(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 24,
        ),
        WithdrawWidget(
            img: 'assets/images/building-bank.png',
            title: 'HSBC Bank',
            subtitle: '(Account No: ****** **2098)'),
        WithdrawWidget(
            img: 'assets/images/building-bank.png',
            title: 'Citibank',
            subtitle: '(Account No: ****** **2098)'),
        WithdrawWidget(
            img: 'assets/images/building-bank.png',
            title: 'Maybank',
            subtitle: '(Account No: ****** **2098)'),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SellerWithdrawAddbankTwo(),));
          },
          child: WithdrawWidget(
              img: 'assets/images/circle-plus.png',
              title: 'Add Bank Account',
              subtitle: 'Bank Name'),
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
                  child: ElevatedButton(onPressed: (){}, child: Center(
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
