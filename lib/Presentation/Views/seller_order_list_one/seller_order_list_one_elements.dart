import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../ModelClass/Model_Class.dart';

class SellerOrderListOneElements extends StatefulWidget{
  final ModelClass modelClass;

  const SellerOrderListOneElements({super.key, required this.modelClass});

  @override
  State<SellerOrderListOneElements> createState() => _SellerOrderListOneElementsState();
}

class _SellerOrderListOneElementsState extends State<SellerOrderListOneElements> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.modelClass.orderId.toString(),
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff27262A)),
          ),
          Text(
            widget.modelClass.created.toString(),
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff27262A)),
          ),
          Text(
            widget.modelClass.price.toString(),
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff27262A)),
          ),
          Container(
            width: 92,
            height: 24,
            child: ElevatedButton(onPressed: widget.modelClass.onButtonPressed, child: Text(widget.modelClass.buttonText,
              style: TextStyle(fontSize: 9, fontWeight: FontWeight.w400, color: Color(0xffFFFFFF)),
              textAlign: TextAlign.center,
            ),
              style: ElevatedButton.styleFrom(backgroundColor: widget.modelClass.buttonColor, shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),

              ),),
            ),

          )


        ],
      ),
    );
  }
}