import 'package:contr_project/ModelClass/QR_code.dart';
import 'package:contr_project/ModelClass/testing.dart';
import 'package:contr_project/Presentation/Views/seller_finance/seller_finance_elements.dart';
import 'package:contr_project/Presentation/Views/seller_withdraw/seller_withdraw.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SellerFinance extends StatelessWidget{
  List<QrCode> requestList  = [
    QrCode(img: 'assets/images/arrow-down-left-circle.png', title: 'Order #102938',subtitle: '25/03/2024',
    order: 'Mailer Box . Stripe', votes: '\$ 339.90',
    ),
    QrCode(img: 'assets/images/arrow-down-left-circle.png', title: 'Order #113809',subtitle: '25/03/2024',
    order: 'Top & Bottom Carton . FPX', votes: '\$ 1814.30',
    ),
    QrCode(img: 'assets/images/arrow-up-right-circle.png', title: 'Withdrawal #393899',subtitle: '24/03/2024',
    order: 'Maybank Berhad', votes: '\$ 14,000.00',
    ),
    QrCode(img: 'assets/images/arrow-up-right-circle.png', title: 'Contro #990394',subtitle: '24/03/2024',
    order: 'Seller Fees . Contro Wallet', votes: '\$ 1,201.45',
    ),
    QrCode(img: 'assets/images/arrow-down-left-circle.png', title: 'Order #113809',subtitle: '22/03/2024',
      order: 'Digital Print Box . FPX', votes: '\$ 514.30',
    ),
  ];
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar( title : Text(
         'Wallet',
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
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Container(
            width: double.infinity,

            color: Color(0xff0CC67C),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30,),
                  Text('Account Balance', style: TextStyle(fontSize:16 ,
                      fontWeight: FontWeight.w400, color: Color(0xffFFFFFF)),),
                  SizedBox(height: 10,),
                  Text('RM 1,888,000.00', style: TextStyle(fontSize:32 ,
                      fontWeight: FontWeight.w400, color: Color(0xffFFFFFF)),),
                  SizedBox(height: 20,),
                  Text('Last updated 24th June 2024.', style: TextStyle(fontSize:10 ,
                      fontWeight: FontWeight.w400, color: Color(0xffFFFFFF)),),
                  SizedBox(height: 20,),
                ],
              ),
            ),
          ),
        ),
       SizedBox(height: 27,),
        ReusableWidget(img: 'assets/images/info-circle.png',
            title: 'Request Money', showArrow: true, onTap: (){}),
        ReusableWidget(img: 'assets/images/cash.png', title: 'Withdrawal',
            showArrow: true, onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => SellerWithdraw(),));
            }),
        SizedBox(height: 41,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 114,
                height: 28,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.deepPurpleAccent.shade100,
                ),
                child: Center(
                  child: Text('All Transactions', style: TextStyle(fontSize: 9, fontWeight:
                  FontWeight.w400, color: Color(0xff622CEA)),
                  textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: 71,
                height: 28,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Color(0xffF5F6F8),
                ),
                child: Center(
                  child: Text('Revenue', style: TextStyle(fontSize: 9, fontWeight:
                  FontWeight.w400, color: Color(0xff919191)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: 99,
                height: 28,  decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0xffF5F6F8),
              ),
                child: Center(
                  child: Text('Expenditures', style: TextStyle(fontSize: 9, fontWeight:
                  FontWeight.w400, color: Color(0xff919191)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                width: 35,
                height: 28,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Color(0xffF5F6F8),
                ),
                child: Center(
                  child: Text('Others', style: TextStyle(fontSize: 9, fontWeight:
                  FontWeight.w400, color: Color(0xff919191)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Image.asset('assets/images/menu.png', width: 24, height: 24,),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: requestList.length,
              itemBuilder: (context, i){
              return SellerFinanceElements(sellerelements: requestList[i]);
          }),
        ),
        
      ],
      
    );
  }
}