import 'package:contr_project/ModelClass/QR_code.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SellerQrcodeMainElements extends StatefulWidget {
  final QrCode qrCode;

  const SellerQrcodeMainElements({super.key, required this.qrCode});

  @override
  State<SellerQrcodeMainElements> createState() => _SellerQrcodeMainElementsState();
}

class _SellerQrcodeMainElementsState extends State<SellerQrcodeMainElements> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    // bool status = false;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Row(
        children: [
          Image.asset(
            widget.qrCode.img.toString(),
            width: 56,
            height: 56,
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.qrCode.title.toString(),
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff27262A)),
                ),
                Text(widget.qrCode.subtitle.toString(), style: TextStyle
                  (fontSize:14 , fontWeight: FontWeight.w400, color: Color(0xff06A0F0)),),
                Text(widget.qrCode.order.toString(), style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400,
                color: Color(0xffF03B77),
                ),)
              ],
            ),
          ),




          Container(
            child: FlutterSwitch(
              width: 75.0,
              height: 25.0,
              valueFontSize: 9.0,
              toggleSize: 15.0,
              value: status,
              borderRadius: 30.0,
              padding: 6.0,
              showOnOff: true,
              onToggle: (val) {
                setState(() {
                  status = val;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
