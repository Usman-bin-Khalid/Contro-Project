import 'package:contr_project/Presentation/Views/contro_corporate/contro_corporate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ControIndividual extends StatefulWidget {
  @override
  State<ControIndividual> createState() => _ControIndividualState();
}

class _ControIndividualState extends State<ControIndividual> {
  bool _isTapped = false;

  void toggleIconColor() {
    setState(() {
      _isTapped = !_isTapped;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(context),
    );
  }

  Widget _getBody(BuildContext context) {
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
             child: Center(
               child: Column(
                 children: [

                   Padding(
                     padding: const EdgeInsets.only(left: 10, right: 10),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text(
                           'Individual',
                           style: TextStyle(
                               fontSize: 14,
                               fontWeight: FontWeight.w400,
                               color: Color(0xff27262A)),
                         ),
                         // Icon(Icons.circle_notifications_outlined, color: Colors.blue , size: 16,),
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
                     height: 7,
                   ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 10),
                     child: Text(
                       'When signing up as a sole trader, please choose "Individual" as your business type.',
                       style: TextStyle(
                           fontSize: 14,
                           fontWeight: FontWeight.w400,
                           color: Color(0xff919191)),
                       textAlign: TextAlign.center,
                     ),
                   ),
                   SizedBox(
                     height: 7,
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
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    'Corporate',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff27262A)),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    'When signing up as a corporate entity, please choose "Company" as your business type.',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff27262A)),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Please complete your business verification with a business license.',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff27262A)),
                  ),
                ],
              ),
            ),
          ),
        ),



        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ControCorporate(),));
            },
            child: Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
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
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            width: double.infinity,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
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
                  height: 13,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 13, top: 13, bottom: 13),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    border: Border.all(
                      color: Color(0xffEBEBEB),
                      width: 0.5
                    ),
                  ),
                  child: Text(
                    'Enter Instant App Name',
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
          height: 20,
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
