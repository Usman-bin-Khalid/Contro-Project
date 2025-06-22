import 'package:contr_project/Presentation/Views/seller_order_details_markassent/seller_order_details_markassent.dart';
import 'package:contr_project/Presentation/Views/seller_order_list_one/seller_order_list_one.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SellerOrderDetailsTwo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Activity Details',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color(0xff27262A)),
        ),
      ),
      body: _getBody(context),
    );
  }
    Widget _getBody(BuildContext context){
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/box.png',
                  width: 56,
                  height: 56,
                ),
                SizedBox(
                  width: 6,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mailer Box ',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff27262A)),
                    ),
                    Text(
                      'MB-203998A',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff919191)),
                    ),
                    RichText(text: TextSpan(
                        children: [
                          TextSpan(text: 'Remarks: ', style: TextStyle(fontSize: 14,
                            fontWeight: FontWeight.w400, color: Color(0xff27262A),)
                          ),
                          TextSpan(text: ' 350 x 350 x 120, T180/T180, BF', style: TextStyle(fontSize: 14,
                              fontWeight: FontWeight.w400, color: Color(0xff0711FF))),
                        ]
                    )),
                    Text(
                      'x 100',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff27262A)),
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 98,
                        height: 26,
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SellerOrderListOne(),));
                        }, child: Text('In Transit',style: TextStyle(fontSize: 9,
                            fontWeight: FontWeight.w400, color: Color(0xffFFFFFF)),
                          textAlign: TextAlign.center,
                        ),
                          style: ElevatedButton.styleFrom(backgroundColor: Color(0xff4279FA),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6),
                            ),

                          ),
                        ),
                      ),
                      SizedBox(height: 25,),
                      Text('RM 3.00', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,
                          color: Color(0xff27262A)),)
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Subtotal', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                    color: Color(0xff27262A)),),
                Text('RM 300.00', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                    color: Color(0xff919191)),),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Shipping fees', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                    color: Color(0xff27262A)),),
                Text('RM 30.00', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                    color: Color(0xff919191)),),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Payment gateway (3%)', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                    color: Color(0xff27262A)),),
                Text('RM 9.90', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                    color: Color(0xff919191)),),

              ],
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Order Total', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,
                    color: Color(0xff27262A)),),
                Text('RM 339.90', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600,
                    color: Color(0xff27262A)),),

              ],
            ),
          ),
          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Order No', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,
                    color: Color(0xff27262A)),),
                Text('#102938', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                    color: Color(0xff919191)),),

              ],
            ),
          ),
          SizedBox(height: 7,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Order time', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                    color: Color(0xff27262A)),),
                Text('03/02/2024, 02:23 PM', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                    color: Color(0xff919191)),),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Payment time', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                    color: Color(0xff27262A)),),
                Text('03/02/2024, 02:28 PM', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                    color: Color(0xff919191)),),

              ],
            ),
          ),

          SizedBox(height: 12,),

          ListTile(
            leading: Image.asset('assets/images/mood-happy.png', width:24 , height:24 ,),
            title: Text('Contact Buyer', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,
                color: Color(0xff27262A)),),
            trailing: Image.asset('assets/images/arrowright.png', width: 12, height: 12,),
          ),

          SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset('assets/images/deliverypicthree.png')),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SellerOrderDetailsMarkassent(),));
                    }, child: Center(
                      child: Text('Track Order', style: TextStyle(fontSize: 16,
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