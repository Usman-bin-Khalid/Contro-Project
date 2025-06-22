import 'package:contr_project/Presentation/Views/seller_item_deal_method_two/seller_item_deal_method_two.dart';
import 'package:contr_project/Presentation/Views/seller_item_varients_list/seller_item_varients_list.dart';
import 'package:contr_project/Presentation/Views/seller_items_varients/seller_item_varients.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SellerItemDealMethod extends StatefulWidget {
  @override
  State<SellerItemDealMethod> createState() => _SellerItemDealMethodState();
}

class _SellerItemDealMethodState extends State<SellerItemDealMethod> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Set Pick-up & Delivery',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color(0xff27262A)),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SellerItemVarients(),
                  ));
            },
            icon: Icon(Icons.cancel_outlined)),
      ),
      body: _getBody(context),
    );
  }

  Widget _getBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14, right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/caricon.png',
                width: 36,
                height: 36,
              ),
              SizedBox(width: 6,),
              Text(
                'Domestic Delivery',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff27262A)),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
              ),
            ],
          ),
        ),
        SizedBox(height: 11,),
        Padding(
          padding: const EdgeInsets.only(left: 14, right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/planeicon.png',
                width: 36,
                height: 36,
              ),
              SizedBox(width: 6,),
              Text(
                'International Shipping',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff27262A)),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
              ),
            ],
          ),
        ),
        SizedBox(height: 11,),
        Padding(
          padding: const EdgeInsets.only(left: 14, right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/handicon.png',
                width: 36,
                height: 36,
              ),
              SizedBox(width: 6,),
              Text(
                'Pick-up',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff27262A)),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
              ),
            ],
          ),
        ),
        // ListTile(
        //   leading: Image.asset(
        //     'assets/images/caricon.png',
        //     width: 36,
        //     height: 36,
        //   ),
        //   title: Text(
        //     'Domestic Delivery',
        //     style: TextStyle(
        //         fontSize: 16,
        //         fontWeight: FontWeight.w400,
        //         color: Color(0xff27262A)),
        //   ),
        //   // trailing: Container(
        //   //   child: FlutterSwitch(
        //   //     width: 75.0,
        //   //     height: 25.0,
        //   //     valueFontSize: 9.0,
        //   //     toggleSize: 15.0,
        //   //     value: status,
        //   //     borderRadius: 30.0,
        //   //     padding: 6.0,
        //   //     showOnOff: true,
        //   //     onToggle: (val) {
        //   //       setState(() {
        //   //         status = val;
        //   //       });
        //   //     },
        //   //   ),
        //   // ),
        // ),
        // ListTile(
        //   leading: Image.asset(
        //     'assets/images/planeicon.png',
        //     width: 36,
        //     height: 36,
        //   ),
        //   title: Text(
        //     'International Shipping',
        //     style: TextStyle(
        //         fontSize: 16,
        //         fontWeight: FontWeight.w400,
        //         color: Color(0xff27262A)),
        //   ),
        //   // trailing: Container(
        //   //   child: FlutterSwitch(
        //   //     width: 75.0,
        //   //     height: 25.0,
        //   //     valueFontSize: 9.0,
        //   //     toggleSize: 15.0,
        //   //     value: status,
        //   //     borderRadius: 30.0,
        //   //     padding: 6.0,
        //   //     showOnOff: true,
        //   //     onToggle: (val) {
        //   //       setState(() {
        //   //         status = val;
        //   //       });
        //   //     },
        //   //   ),
        //   // ),
        // ),
        // ListTile(
        //   leading: Image.asset(
        //     'assets/images/handicon.png',
        //     width: 36,
        //     height: 36,
        //   ),
        //   title: Text(
        //     'Pick-up',
        //     style: TextStyle(
        //         fontSize: 16,
        //         fontWeight: FontWeight.w400,
        //         color: Color(0xff27262A)),
        //   ),
        //
        //   // trailing: Container(
        //   //   child: FlutterSwitch(
        //   //     width: 75.0,
        //   //     height: 25.0,
        //   //     valueFontSize: 9.0,
        //   //     toggleSize: 15.0,
        //   //     value: status,
        //   //     borderRadius: 30.0,
        //   //     padding: 6.0,
        //   //     showOnOff: true,
        //   //     onToggle: (val) {
        //   //       setState(() {
        //   //         status = val;
        //   //       });
        //   //     },
        //   //   ),
        //   // ),
        // ),


        SizedBox(height: 30,),
        ListTile(
          title: Text('Pick-up Location', style: TextStyle(fontSize:16 , fontWeight: FontWeight.w400,
          color: Color(0xff27262A)),),
          trailing: Text('Edit', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16,
          color: Color(0xff007AFF)),),
        ),
        SizedBox(height: 10,),




        Padding(
          padding: const EdgeInsets.only(left: 6),
          child: ListTile(
            leading: Image.asset('assets/images/map-pin.png', width:24 , height: 24,),
            title: Text('Pavilion Bukit Bintang', style: TextStyle(fontSize:14 , fontWeight: FontWeight.w400,
              color: Color(0xff27262A),
            ),),
            subtitle: Text('Kuala Lumpur, 5000, Malaysia.', style: TextStyle(fontWeight:FontWeight.w400 ,
                fontSize: 14, color: Color(0xff919191)),),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 6),
          child: ListTile(
            leading: Image.asset('assets/images/map-pin.png', width:24 , height: 24,),
            title: Text('Mid Valley Megamall', style: TextStyle(fontSize:14 , fontWeight: FontWeight.w400,
              color: Color(0xff27262A),
            ),),
            subtitle: Text('Kuala Lumpur, 5000, Malaysia', style: TextStyle(fontWeight:FontWeight.w400 ,
                fontSize: 14, color: Color(0xff919191)),),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 6),
          child: ListTile(
            leading: Image.asset('assets/images/map-pin.png', width:24 , height: 24,),
            title: Text('One Utama Shopping Centre', style: TextStyle(fontSize:14 , fontWeight: FontWeight.w400,
              color: Color(0xff27262A),
            ),),
            subtitle: Text('Petaling Jaya, 47800, Malaysia', style: TextStyle(fontWeight:FontWeight.w400 ,
                fontSize: 14, color: Color(0xff919191)),),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 6),
          child: ListTile(
            leading: Image.asset('assets/images/map-pin.png', width:24 , height: 24,),
            title: Text('TRX Shopping Gallery', style: TextStyle(fontSize:14 , fontWeight: FontWeight.w400,
              color: Color(0xff27262A),
            ),),
            subtitle: Text('TRX, Kuala Lumpur, 50000, Malaysia', style: TextStyle(fontWeight:FontWeight.w400 ,
                fontSize: 14, color: Color(0xff919191)),),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 6),
          child: ListTile(
            leading: Image.asset('assets/images/map-pin.png', width:24 , height: 24,),
            title: Text('Kuala Lumpur City Centre', style: TextStyle(fontSize:14 , fontWeight: FontWeight.w400,
              color: Color(0xff27262A),
            ),),
            subtitle: Text('Kuala Lumpur, 5000, Malaysia', style: TextStyle(fontWeight:FontWeight.w400 ,
                fontSize: 14, color: Color(0xff919191)),),
          ),
        ),

        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  height:48,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SellerItemDealMethodTwo(),));
                  }, child: Center(
                    child: Text('Done', style: TextStyle(fontSize: 16,
                      fontWeight: FontWeight.w400, color: Color(0xffFFFFFF),
                    ),
                    ),
                  ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff622CEA),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)
                        )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 7,),
            ],
          ),
        ),
      ],
    );
  }
}
