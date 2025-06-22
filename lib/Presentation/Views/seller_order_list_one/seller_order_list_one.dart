import 'package:contr_project/Presentation/Views/customer_order_details/customer_order_details.dart';
import 'package:contr_project/Presentation/Views/seller_order_list_one/seller_order_list_one_elements.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../ModelClass/Model_Class.dart';

class SellerOrderListOne extends StatelessWidget {
  List<ModelClass> orderList = [
    ModelClass(
        orderId: '#3499889',
        created: '24/03/2024',
        price: '\$668.80',
        onButtonPressed: () {
        },
        buttonColor: Color(0xffFFAA3C),
        buttonText: 'Open'),
    ModelClass(
        orderId: '#3499889',
        created: '24/03/2024',
        price: '\$668.80',
        onButtonPressed: () {},
        buttonColor: Color(0xff4279FA),
        buttonText: 'In Transit'),
    ModelClass(
        orderId: '#3499889',
        created: '24/03/2024',
        price: '\$668.80',
        onButtonPressed: () {},
        buttonColor: Color(0xff0CC67C),
        buttonText: 'Complete'),
    ModelClass(
        orderId: '#3499889',
        created: '24/03/2024',
        price: '\$668.80',
        onButtonPressed: () {},
        buttonColor: Color(0xffFE2B54),
        buttonText: 'Dispute'),
    ModelClass(
        orderId: '#3499889',
        created: '24/03/2024',
        price: '\$668.80',
        onButtonPressed: () {},
        buttonColor: Color(0xffFFAA3C),
        buttonText: 'Open'),
    ModelClass(
        orderId: '#3499889',
        created: '24/03/2024',
        price: '\$668.80',
        onButtonPressed: () {},
        buttonColor: Color(0xff4279FA),
        buttonText: 'In Transit'),
    ModelClass(
        orderId: '#3499889',
        created: '24/03/2024',
        price: '\$668.80',
        onButtonPressed: () {},
        buttonColor: Color(0xff0CC67C),
        buttonText: 'Complete'),
    ModelClass(
        orderId: '#3499889',
        created: '24/03/2024',
        price: '\$668.80',
        onButtonPressed: () {},
        buttonColor: Color(0xffFE2B54),
        buttonText: 'Dispute'),
    ModelClass(
        orderId: '#3499889',
        created: '24/03/2024',
        price: '\$668.80',
        onButtonPressed: () {},
        buttonColor: Color(0xffFFAA3C),
        buttonText: 'Open'),
    ModelClass(
        orderId: '#3499889',
        created: '24/03/2024',
        price: '\$668.80',
        onButtonPressed: () {},
        buttonColor: Color(0xff4279FA),
        buttonText: 'In Transit'),
    ModelClass(
        orderId: '#3499889',
        created: '24/03/2024',
        price: '\$668.80',
        onButtonPressed: () {},
        buttonColor: Color(0xff0CC67C),
        buttonText: 'Complete'),
    ModelClass(
        orderId: '#3499889',
        created: '24/03/2024',
        price: '\$668.80',
        onButtonPressed: () {},
        buttonColor: Color(0xffFE2B54),
        buttonText: 'Dispute'),
    ModelClass(
        orderId: '#3499889',
        created: '24/03/2024',
        price: '\$668.80',
        onButtonPressed: () {},
        buttonColor: Color(0xffFFAA3C),
        buttonText: 'Open'),
    ModelClass(
        orderId: '#3499889',
        created: '24/03/2024',
        price: '\$668.80',
        onButtonPressed: () {},
        buttonColor: Color(0xff4279FA),
        buttonText: 'In Transit'),
    ModelClass(
        orderId: '#3499889',
        created: '24/03/2024',
        price: '\$668.80',
        onButtonPressed: () {},
        buttonColor: Color(0xff0CC67C),
        buttonText: 'Complete'),
    ModelClass(
        orderId: '#3499889',
        created: '24/03/2024',
        price: '\$668.80',
        onButtonPressed: () {},
        buttonColor: Color(0xffFE2B54),
        buttonText: 'Dispute'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Activity',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color(0xff27262A)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Image.asset(
              'assets/images/search.png',
              width: 24,
              height: 24,
            ),
          )
        ],
      ),
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
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 21,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent.shade100,
                    borderRadius: BorderRadius.circular(6)),
                width: 80,
                height: 24,
                child: Text(
                  'All (8)',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff622CEA)),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffF5F6F8),
                  borderRadius: BorderRadius.circular(6),
                ),
                width: 95,
                height: 24,
                child: Text(
                  'Inactive (0)',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff919191)),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                color: Color(0xffF5F6F8),
                width: 135,
                height: 24,
                child: Text(
                  'Under Review (0)',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff919191)),
                  textAlign: TextAlign.center,
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CustomerOrderDetails(),));
                },
                child: Image.asset(
                  'assets/images/menu.png',
                  width: 24,
                  height: 24,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Order ID',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff27262A)),
              ),
              Text(
                'Created',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff27262A)),
              ),
              Text(
                'Price',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff27262A)),
              ),
              Text(
                'Status',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff27262A)),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: orderList.length,
              itemBuilder: (context, i){
                return SellerOrderListOneElements(modelClass: orderList[i]);
              }),
        ),
      ],
    );
  }
}
