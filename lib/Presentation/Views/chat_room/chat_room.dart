import 'package:contr_project/Presentation/Views/chat/chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatRoom extends StatefulWidget{
  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  TextEditingController searchController = TextEditingController();

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text('Contro Chat',
       style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Color(0xff27262A)),),),
       body: _getBody(context),
       bottomNavigationBar: BottomNavigationBar(
         onTap: (index) {
           _currentIndex = index;
           setState(() {});
         },
         currentIndex: _currentIndex,
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
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Container(
            height: 53,
            child: TextField(
              controller: searchController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search_rounded),
                suffixIcon: Icon(Icons.add),
                label: Text(
                  'Search',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff27262A)),
                  textAlign: TextAlign.center,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 25,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Container(
            width: double.infinity,
            height: 90,
            color: Color(0xffCECECE),
            child: Center(
              child: ListTile(
                leading: Image.asset('assets/images/controLogo.png', width: 56, height: 56,),
                title: Text('Contro', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                color: Color(0xff27262A)),),
                subtitle: Text('Would you like to upgrade  total products. Please b...', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                color: Color(0xff27262A)),),
                trailing: Text('12:00 AM', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400,
                color: Color(0xff27262A)),),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Chat(),));
            },
            child: Container(
              width: double.infinity,
              height: 90,
              child: ListTile(
                leading: Image.asset('assets/images/chatimg2.png', width: 56, height: 56,),
                title: Text('+6012 777 8888', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                    color: Color(0xff27262A)),),
                subtitle: Text('Do you have XL and able to customise my size?', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                    color: Color(0xff27262A)),),
                trailing: Text('11:00 AM', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400,
                    color: Color(0xff27262A)),),
              ),
            ),
          ),
        ),


        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Container(
            width: double.infinity,
            height: 90,
            child: ListTile(
              leading: Image.asset('assets/images/chatimg3.png', width: 56, height: 56,),
              title: Text('+6011 600 3333', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,
                  color: Color(0xff27262A)),),
              subtitle: Text('[Product]', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                  color: Color(0xff27262A)),),
              trailing: Text('Yesterday', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400,
                  color: Color(0xff27262A)),),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Container(
            width: double.infinity,
            height: 90,
            child: ListTile(
              leading: Image.asset('assets/images/announcement.png', width: 56, height: 56,),
              title: Text('Service Announcement', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,
                  color: Color(0xff27262A)),),
              subtitle: Text('New Coupons Available for Grab!', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,
                  color: Color(0xff27262A)),),
              trailing: Text('Yesterday', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400,
                  color: Color(0xff27262A)),),
            ),
          ),
        ),


      ],
    );
    }
}