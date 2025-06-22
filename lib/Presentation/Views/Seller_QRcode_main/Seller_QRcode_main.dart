import 'package:contr_project/ModelClass/QR_code.dart';
import 'package:contr_project/Presentation/Views/Seller_QRcode_main/Seller_QRcode_main_elements.dart';
import 'package:contr_project/Presentation/Views/Seller_create_QR/Seller_create_QR.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SellerQrcodeMain extends StatefulWidget{
  @override
  State<SellerQrcodeMain> createState() => _SellerQrcodeMainState();
}

class _SellerQrcodeMainState extends State<SellerQrcodeMain> {
  List<QrCode> qrcodeList = [
    QrCode(title: 'Extrabread Instant App',
        subtitle: 'Created on 20/02/2024', order: '103 views', img: 'assets/images/qrcodelogo.png'),
    QrCode(title: 'Mailer Box Details',
        subtitle: 'Created on 20/02/2024', order: '103 views', img: 'assets/images/qrcodelogo.png'),
    QrCode(title: 'New Year Bundle ',
        subtitle: 'Created on 20/02/2024', order: '103 views', img: 'assets/images/qrcodelogo.png'),
    QrCode(title: 'Paper Sheet Details',
        subtitle: 'Created on 20/02/2024', order: '103 views', img: 'assets/images/qrcodelogo.png'),
    QrCode(title: 'Extrabread Customer Service',
        subtitle: 'Created on 20/02/2024', order: '103 views', img: 'assets/images/qrcodelogo.png'),
    QrCode(title: 'Extrabread Shop',
        subtitle: 'Created on 20/02/2024', order: '103 views', img: 'assets/images/qrcodelogo.png'),
  ];

  bool status = false;

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'QR Codes.',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xff27262A)),
          ),

          actions: [
           Image.asset('assets/images/search_icon.png', width: 48, height:48 ,)
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

   Widget _getBody(BuildContext context){
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
              SizedBox(height: 21,),
              Container(
               decoration: BoxDecoration(
                 color: Colors.deepPurpleAccent.shade100,
                 borderRadius: BorderRadius.circular(6),
               ),
                width: 80,
                height: 24,
                child: Text(
                  'Active (0)',
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
                 borderRadius: BorderRadius.circular(6)
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
               decoration: BoxDecoration(
                 color: Color(0xffF5F6F8),
                 borderRadius: BorderRadius.circular(6),
               ),
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
              Image.asset(
                'assets/images/menu.png',
                width: 24,
                height: 24,
              ),
            ],
          ),
        ),
        SizedBox(height: 28,),
        Expanded(
          child: ListView.builder(
              itemCount: qrcodeList.length,
              itemBuilder: (context, i){
            return
                SellerQrcodeMainElements(qrCode: qrcodeList[i]);

          }),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SellerCreateQr(),));
                }, child: Text('Create QR Code', style: TextStyle(fontSize: 16, fontWeight:
                FontWeight.w400, color: Color(0xffFFFFFF),
                ),
                  textAlign: TextAlign.center,
                ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff622CEA),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)
                      )
                  ),
                ),
              ),

            ],
          ),
        ),
      ],
    );
   }
}