import 'package:contr_project/Presentation/Views/contro_dashboard_new/contro_dashboard_new.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ControCorporate extends StatefulWidget{
  @override
  State<ControCorporate> createState() => _ControCorporateState();
}

class _ControCorporateState extends State<ControCorporate> {
  bool _isTapped = false;
    void toggleIconColor(){
      _isTapped = !_isTapped;
      setState(() {

      });
    }
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: _getBody(context),
     );
  }

  Widget _getBody(BuildContext context){
      return Column(
        children: [
          SizedBox(height: 56,),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Center(
              child: Text(
                'Create a New Business.',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff27262A)),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Tell us about your new ventures.',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff27262A)),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Text(
              'Business Type',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff27262A)),
            ),
          ),
          SizedBox(
            height: 20,
          ),

           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 22),
             child: Container(
               width: double.infinity,
               height: 152,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(2),
                 border: Border.all(
                     color: Color(0xffEBEBEB),
                     width: 1.5
                 ),
               ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Text(
                           'Individual',
                           style: TextStyle(
                               fontSize: 14,
                               fontWeight: FontWeight.w400,
                               color: Color(0xff27262A)),
                         ),
                         // Icon(Icons.circle_notifications_outlined, color: Colors.blue , size: 16,),

                       ],
                     ),
                   ),
                   SizedBox(
                     height: 10,
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10),
                     child: Text(
                       'When signing up as a sole trader, please choose "Individual" as your business type.',
                       style: TextStyle(
                           fontSize: 14,
                           fontWeight: FontWeight.w400,
                           color: Color(0xff919191)),
                     ),
                   ),
                   SizedBox(
                     height: 10,
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10),
                     child: Text(
                       'Please verify your identity using a valid passport and bank account.',
                       style: TextStyle(
                           fontSize: 14,
                           fontWeight: FontWeight.w400,
                           color: Color(0xff919191)),
                     ),
                   ),
                 ],
               ),
             ),
           ),

          SizedBox(
            height: 32,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Container(
              width: double.infinity,
              height: 152,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                border: Border.all(
                  color: Color(0xffEBEBEB),
                  width: 1.5
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Corporate',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff27262A)),
                        ),
                        IconButton(
                          onPressed: toggleIconColor,
                          icon: Icon(
                            Icons.circle_notifications_outlined,
                            color: _isTapped ? Colors.blue : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'When signing up as a corporate entity, please choose "Company" as your business type.',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff27262A)),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Please complete your business verification with a business license.',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff27262A)),
                    ),
                  ),
                ],
              ),
            ),
          ),


          SizedBox(
            height: 52,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ControDashboardNew(),));
              },
              child: Container(
                color: Colors.black,
                child: Text(
                  'For compliance purposes only, we may need to verify your personal information. This information will never be shared outside of our secured services.',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color(0xffFFFFFF)),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Instant App Name',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff27262A)),
                ),
                Text(
                  '0/120',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff919191)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 23,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Text(
              'Enter Instant App Name',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff919191)),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Text(
              'Business Owner Name',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff27262A)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32),
            child: Text(
              'Enter your Full Name',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff919191)),
            ),
          ),

        ],
      );
  }
}