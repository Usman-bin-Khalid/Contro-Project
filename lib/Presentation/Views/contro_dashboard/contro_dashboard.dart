import 'package:contr_project/ModelClass/Model_Class.dart';
import 'package:contr_project/Presentation/Views/Seller_QRcode_new/Seller_QrCode_new.dart';
import 'package:contr_project/Presentation/Views/contro_dashboard/contro_dashboard_elements.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ControDashboard extends StatelessWidget {
  List<ModelClass> orderList = [
    ModelClass(orderId: '#3499889', created: '24/03/2024', price: '\$668.80', onButtonPressed: (){
    }, buttonColor: Color(0xffFFAA3C), buttonText: 'Open'),

    ModelClass(orderId: '#3499889', created: '24/03/2024', price: '\$668.80', onButtonPressed: (){
    }, buttonColor: Color(0xff4279FA), buttonText: 'In Transit'),
    ModelClass(orderId: '#3499889', created: '24/03/2024', price: '\$668.80', onButtonPressed: (){},
    buttonColor: Color(0xff0CC67C), buttonText: 'Complete'
    ),
    ModelClass(orderId: '#3499889', created: '24/03/2024', price: '\$668.80', onButtonPressed: (){},
     buttonColor: Color(0xffFE2B54), buttonText: 'Dispute'
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(context),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          // _currentIndex = index;
          // setState(() {});
        },
        // currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/homeicon2.png',
                width: 20,
                height: 20,
                // color: _currentIndex == 0 ? Colors.blue : Colors.black,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/chat.png',
                width: 20,
                height: 20,
                // color: _currentIndex == 1 ? Colors.blue : Colors.black,
              ),
              label: 'Messages'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/square-plus.png',
                width: 32,
                height: 32,
                // color: _currentIndex == 2 ? Colors.blue : Colors.black,
              ),
              label: 'Add'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/Activities.png',
                width: 20,
                height: 20,
                // color: _currentIndex == 3 ? Colors.blue : Colors.black,
              ),
              label: 'Activities'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/settings.png',
                width: 20,
                height: 20,
                // color: _currentIndex == 4 ? Colors.blue : Colors.black,
              ),
              label: 'Settings'),
        ],
        // selectedItemColor: Colors.blue,
        // unselectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(fontSize: 10, color: Colors.blue),
        unselectedLabelStyle: TextStyle(fontSize: 10, color: Colors.black),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  Widget _getBody(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 56,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/logo_wallet.png',
                width: 24,
                height: 24,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '~WesleyBread',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff27262A)),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/title1.png',
                width: 65,
                height: 44,
              ),
              Image.asset(
                'assets/images/title2.png',
                width: 116,
                height: 44,
              ),
              Image.asset(
                'assets/images/title3.png',
                width: 80,
                height: 44,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 33),
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Text(
                    'Sales Statistics',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff27262A)),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  // Image.asset(
                  //   'assets/images/amount_img.png',
                  //   width: 171,
                  //   height: 38,
                  // ),
                  Row(
                    children: [
                      Text('\$468', style: TextStyle(fontSize: 38, fontWeight: FontWeight.w600,
                      color: Color(0xff27262A)),),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          width: 59,
                          height: 24,
                          decoration: BoxDecoration(color: Color(0xff55EF6E),
                          borderRadius: BorderRadius.circular(4)),
                          child: Center(
                            child: Text('+ 4.2%', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400,
                                color: Color(0xff265D4A)),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),

        SizedBox(
          height: 10,
        ),
        Padding(

          padding: const EdgeInsets.only(left: 33),
          child: Row(
            children: [
              Column(
                children: [
                  Text(
                    'Overview',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff27262A)),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        child: CircularProgressIndicator(
                          color: Colors.deepPurple,
                        ),
                      ),
                      SizedBox(width: 3,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Daily Sales',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff919191)),
                          ),
                          Text(
                            "\$1200.45",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff919191)),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        child: CircularProgressIndicator(
                          color: Colors.deepPurple,
                        ),
                      ),
                      SizedBox(width: 3,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Daily Orders',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff919191)),
                          ),
                          Text(
                            "14",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff919191)),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SellerQrcodeNew(),));
                },
                  child: Image.asset('assets/images/chart.png', width:210 , height:157 ,)),
            ],
          ),
        ),
        SizedBox(height: 50,),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text('Activity.', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xff27262A)),),
        ),
        SizedBox(height: 16,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Order ID', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff27262A)),),
              Text('Created', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff27262A)),),
              Text('Price', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff27262A)),),
              Text('Status', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff27262A)),),
            ],
          ),
        ),
        SizedBox(height: 20,),
        Expanded(
          child: ListView.builder(
              itemCount: orderList.length,
              itemBuilder: (context, i){
              return ControDashboardElements(modelClass: orderList[i]);
          }),
        ),
      ],
    );
  }
}
