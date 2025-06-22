import 'package:contr_project/Presentation/Views/seller_setting/seller_setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SellerCreateQr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create QR Code.',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color(0xff27262A)),
        ),
        leading: Icon(
          Icons.cancel_outlined,
          size: 28,
          color: Color(0xff27262A),
        ),
      ),
      body: _getBody(context),
    );
  }

  Widget _getBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: Text(
            'QR Code Name',
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
          padding: const EdgeInsets.only(left: 32),
          child: Text(
            'Enter QR Code Name',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff919191)),
          ),
        ),
        SizedBox(
          height: 46,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: Text(
            'Link',
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
          padding: const EdgeInsets.only(left: 32, right: 42),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Instant App',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff27262A)),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 8,
                color: Color(0xff27262A),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 46,
        ),
         Row(
           children: [
             Column(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 22),
                   child: Text(
                     'Date Created',
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
                   padding: const EdgeInsets.only(left: 32),
                   child: Text(
                     '20/02/2024',
                     style: TextStyle(
                         fontSize: 14,
                         fontWeight: FontWeight.w400,
                         color: Color(0xff27262A)),
                   ),
                 ),
               ],
             ),
           ],
         ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SellerSetting(),));
                        },
                        child: Text(
                          'Done',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffFFFFFF)),
                          textAlign: TextAlign.center,
                        ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff622CEA),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
            ],
          ),
        )
      ],
    );
  }
}
