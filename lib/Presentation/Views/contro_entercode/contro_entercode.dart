import 'package:contr_project/Presentation/Views/contro_individual/contro_individual.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ControEntercode extends StatelessWidget {
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
              'Verify your OTP Code',
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
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text:
                        'Enter the One Time Password (OTP) code from the SMS we sent to ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff27262A),
                    ),
                  ),
                  TextSpan(
                    text: ' +60127625557',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff0711FF),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),


        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 14.0, vertical: 24.0), // Provide horizontal padding
          child: Row(
            children: List.generate(
              6,
              (index) => Expanded(
                child: Container(
                  height: 42.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                  ),

                  margin: EdgeInsets.symmetric(
                      horizontal:
                          7.0), // Provide horizontal margin between containers
                ),
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Container(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ControIndividual(),
                    ));
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
        // SizedBox(
        //    height: 12,
        // ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 12),
        ),

        Center(
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "Don't receive the OTP?",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff27262A),
                  )),
              TextSpan(
                  text: ' RESEND',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff0711FF))),
            ]),
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
