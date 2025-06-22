import 'package:contr_project/Presentation/Views/seller_studio_location/seller_studio_location.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../ModelClass/QR_code.dart';

class SellerStudioLocationWidget extends StatefulWidget {
  @override
  State<SellerStudioLocationWidget> createState() =>
      _SellerStudioLocationWidgetState();
}

class _SellerStudioLocationWidgetState
    extends State<SellerStudioLocationWidget> {
  TextEditingController searchController = TextEditingController();
  List<QrCode> locationList = [
    QrCode(
        title: 'Kuala Lumpur City Centre',
        subtitle: 'Kuala Lumpur, 5000, Malaysia',
        img: 'assets/images/circle-plus.png'),
    QrCode(
        title: 'Pavilion Kuala Lumpur',
        subtitle: 'Kuala Lumpur, 5000, Malaysia',
        img: 'assets/images/circle-plus.png'),
    QrCode(
        title: 'Mid Valley Megamall',
        subtitle: 'Kuala Lumpur, 5000, Malaysia',
        img: 'assets/images/circle-plus.png'),
    QrCode(
        title: 'One Utama Shopping Centre',
        subtitle: 'Petaling Jaya, 47800, Malaysia',
        img: 'assets/images/circle-plus.png'),
    QrCode(
        title: 'Publika',
        subtitle: 'Solaris Dutamas, Kuala Lumpur, 51000, Malaysia',
        img: 'assets/images/circle-plus.png'),
    QrCode(
        title: 'TRX Shopping Gallery',
        subtitle: 'TRX, Kuala Lumpur, 50000, Malaysia',
        img: 'assets/images/circle-plus.png'),
    QrCode(
        title: 'IKEA Ikano Power Centre',
        subtitle: 'Petaling Jaya, 47000, Malaysia',
        img: 'assets/images/circle-plus.png'),
    QrCode(
        title: 'Jalan Alor',
        subtitle: 'Kuala Lumpur, 50000, Malaysia',
        img: 'assets/images/circle-plus.png'),
    QrCode(
        title: 'Petaling Street (Chinatown)',
        subtitle: 'Kuala Lumpur, 50000, Malaysia',
        img: 'assets/images/circle-plus.png'),
    QrCode(
        title: 'Central Market (Pasar Seni)',
        subtitle: 'Kuala Lumpur, 50000, Malaysia',
        img: 'assets/images/circle-plus.png'),

    QrCode(
        title: 'Kuala Lumpur City Centre',
        subtitle: 'Kuala Lumpur, 5000, Malaysia',
        img: 'assets/images/circle-plus.png'),
    QrCode(
        title: 'Pavilion Kuala Lumpur',
        subtitle: 'Kuala Lumpur, 5000, Malaysia',
        img: 'assets/images/circle-plus.png'),
    QrCode(
        title: 'Mid Valley Megamall',
        subtitle: 'Kuala Lumpur, 5000, Malaysia',
        img: 'assets/images/circle-plus.png'),
    QrCode(
        title: 'One Utama Shopping Centre',
        subtitle: 'Petaling Jaya, 47800, Malaysia',
        img: 'assets/images/circle-plus.png'),
    QrCode(
        title: 'Publika',
        subtitle: 'Solaris Dutamas, Kuala Lumpur, 51000, Malaysia',
        img: 'assets/images/circle-plus.png'),
    QrCode(
        title: 'TRX Shopping Gallery',
        subtitle: 'TRX, Kuala Lumpur, 50000, Malaysia',
        img: 'assets/images/circle-plus.png'),
    QrCode(
        title: 'IKEA Ikano Power Centre',
        subtitle: 'Petaling Jaya, 47000, Malaysia',
        img: 'assets/images/circle-plus.png'),
    QrCode(
        title: 'Jalan Alor',
        subtitle: 'Kuala Lumpur, 50000, Malaysia',
        img: 'assets/images/circle-plus.png'),
    QrCode(
        title: 'Petaling Street (Chinatown)',
        subtitle: 'Kuala Lumpur, 50000, Malaysia',
        img: 'assets/images/circle-plus.png'),
    QrCode(
        title: 'Central Market (Pasar Seni)',
        subtitle: 'Kuala Lumpur, 50000, Malaysia',
        img: 'assets/images/circle-plus.png'),

  ];
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
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            controller: searchController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search_off),
              suffixIcon: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff27262A),
                    ),
                    textAlign: TextAlign.center,
                  )),
              label: Text(
                'Search Location',
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
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            width: double.infinity,
            height: 74,
            decoration: BoxDecoration(
              color: Color(0xff27262A),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 6),
                    child: Text(
                      'To find nearby places, please turn on location services.',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffFFFFFF)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Turn On',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffFFFFFF)),
                        textAlign: TextAlign.center),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffFE2B54),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            width: double.infinity,
            height: 32,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 165,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'For you',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff27262A),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffFFFFFF),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 165,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Browse',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff27262A),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffFFFFFF),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 7,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: locationList.length,
              itemBuilder: (context, i){
            return SellerStudioLocation(list: locationList[i]);
          }),
        ),
      ],
    );
  }
}
