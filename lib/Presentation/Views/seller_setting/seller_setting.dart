import 'package:contr_project/ModelClass/testing.dart';
import 'package:contr_project/Presentation/Views/chat_msg/chat_msg.dart';
import 'package:contr_project/Presentation/Views/languages/languages.dart';
import 'package:contr_project/Presentation/Views/seller_account_info/seller_account_info.dart';
import 'package:contr_project/Presentation/Views/seller_activity_main/seller_activity_main.dart';
import 'package:contr_project/Presentation/Views/seller_finance/seller_finance.dart';
import 'package:contr_project/Presentation/Views/seller_item_theme/seller_item_theme.dart';
import 'package:contr_project/Presentation/Views/seller_signin_security/seller_signin_security.dart';
import 'package:contr_project/Presentation/Views/seller_studio_location/seller_studio_location_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SellerSetting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Setting.',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Color(0xff27262A),
          ),
        ),
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
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 27,),
          ReusableWidget(
              img: 'assets/images/profile.png',
              title: 'Account Information',
              showArrow: true,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SellerAccountInfo(),));
              }),
          ReusableWidget(
              img: 'assets/images/lock.png',
              title: 'Sign in & Security',
              showArrow: true,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SellerSigninSecurity(),));
              }),
          ReusableWidget(
              img: 'assets/images/product.png',
              title: 'Products & Services',
              showArrow: true,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SellerStudioLocationWidget(),));
              }),
          ReusableWidget(img: 'assets/images/qrcodeicon.png', title: 'QR Codes',
              showArrow: true, onTap: (){}),
          ReusableWidget(img: 'assets/images/wallet.png', title: 'Wallet',
              showArrow: true, onTap: (){

            Navigator.push(context, MaterialPageRoute(builder: (context) => SellerFinance(),));
              }),
          ReusableWidget(img: 'assets/images/click.png', title: 'Appearance',
              showArrow: true, onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ChatMsg(),));
              }),
          ReusableWidget(img: 'assets/images/browser.png', title: 'Themes',
              showArrow: true, onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SellerItemTheme(),));
              }),
          ReusableWidget(img: 'assets/images/cash-banknote.png', title: 'Payment & Subscriptions',
              showArrow: true, onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SellerActivityMain(),));
              }),
          ReusableWidget(img: 'assets/images/world.png', title: 'Language',
              showArrow: true, onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Languages(),));
              }),
          ReusableWidget(img: 'assets/images/info-circle.png', title: 'About',
              showArrow: true, onTap: (){}),
        ],
      ),
    );
  }
}

