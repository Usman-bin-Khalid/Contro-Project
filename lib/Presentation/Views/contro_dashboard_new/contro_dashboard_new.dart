import 'package:contr_project/Presentation/Views/contro_dashboard/contro_dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ControDashboardNew extends StatelessWidget {
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
          height: 23,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                color: Color(0xff121212),
                borderRadius: BorderRadius.circular(8),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome to Contro Instant App. ',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffFFFFFF)),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Explore your creativity to build instant app for your business.Grow your business with Contro Instant App.',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffFFFFFF)),
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
        ),
        SizedBox(
          height: 23,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            '0/2 complete',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff919191)),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            '2 steps to setup your instant app!',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff919191)),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Text(
            'Check off these to dos to kick-start your business on Contro Instant App.',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff919191)),
          ),
        ),
        SizedBox(height: 35,),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Do you have a product or service to sell?',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff919191)),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),


        SizedBox(height: 31,),
        Padding(
          padding: const EdgeInsets.only(left: 42),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/product_logo.png', width:24 , height: 24,),
              SizedBox(width: 10,),
              Text(
                'Add your first product or service.',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff27262A)),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 42, right: 45),
          child: Text(
            'Start building your inventory by adding your first product or service.',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff919191)),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 6,),
        Center(
          child: Container(
            width: 286,
            height: 36,
            child: ElevatedButton(onPressed: (){}, child: Text('Get started', style: TextStyle
              (fontSize:16 , fontWeight: FontWeight.w400, color: Color(0xffFFFFFF)),
            textAlign: TextAlign.center,
            ),
            style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),

            ),
              backgroundColor: Color(0xff622CEA)

            ),
            ),
          ),
        ),

        SizedBox(height: 45,),
        Center(
          child: Text('Create awesome instant app for your business.', style: TextStyle(fontSize: 16,
              fontWeight: FontWeight.w500, color: Color(0xff27262A)),),
        ),
        SizedBox(height: 31,),

        Padding(
          padding: const EdgeInsets.only(left: 42),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/logomovie.png', width:24 , height: 24,),
              SizedBox(width: 10,),
              Text(
                'Create your first instant page.',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff27262A)),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 42, right: 45),
          child: Text(
            'Start adding some vibrant and appealing applications to your instant app.',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff919191)),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 6,),
        Center(
          child: Container(
            width: 286,
            height: 36,
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ControDashboard(),));

            }, child: Text('Get started', style: TextStyle
              (fontSize:16 , fontWeight: FontWeight.w400, color: Color(0xffFFFFFF)),
              textAlign: TextAlign.center,
            ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff622CEA),
                  shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              )),
            ),
          ),
        ),
        SizedBox(height: 45,),
      ],
    );
  }
}
