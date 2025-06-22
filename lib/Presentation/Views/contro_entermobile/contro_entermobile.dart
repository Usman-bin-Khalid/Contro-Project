import 'package:contr_project/Presentation/Views/contro_entercode/contro_entercode.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ControEntermobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getBody(context),
    );
  }

  Widget _getBody(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 157,
        ),
        Center(
            child: Image.asset(
          'assets/images/handmobile.png',
          width: 120,
          height: 120,
        )),
        SizedBox(
          height: 24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Center(
                child: Text(
              'Verify your mobile number',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff27262A)),
            )),
            SizedBox(),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Center(
            child: Text(
              'Tap "Continue" to get One Time Password (OTP) on this mobile number.',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff27262A)),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(
          height: 96,
        ),
        Center(
          child: Container(
            width: 360,
            height: 48,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ControEntercode(),));
              },
              child: Text(
                'Continue',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffFFFFFF)),
                textAlign: TextAlign.center,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff622CEA),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Center(
          child: Text(
            'By joining Contro you agree our',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Color(0xff27262A)),
          ),
        ),
        Center(
          child: Text(
            'Terms & Conditions.',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Color(0xff0711FF)),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Center(
                  child: Text(
                'contro',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Color(0xff27262A)),
              )),
          
            ],
          ),
        ),


      ],
    );
  }
}
