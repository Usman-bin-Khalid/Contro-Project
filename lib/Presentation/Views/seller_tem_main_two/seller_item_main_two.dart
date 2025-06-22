import 'package:contr_project/ModelClass/QR_code.dart';
import 'package:contr_project/Presentation/Views/seller_item_add_item_simple/seller_item_add_item_simple.dart';
import 'package:contr_project/Presentation/Views/seller_tem_main_two/seller_item_main_two_elements.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SellerItemMainTwo extends StatelessWidget{
  List<QrCode> sellerItemsList = [
    QrCode(img: 'assets/images/box.png', title: 'RSC Cartons', subtitle: 'MB-203998A',
    order: 'Packaging Products', votes: '\$ 5.80',
    ),
    QrCode(img: 'assets/images/carton.png', title: 'RSC Cartons', subtitle: 'RSC-6009-4C',
      order: 'Packaging Products', votes: '\$ 3.80',
    ),
    QrCode(img: 'assets/images/hairbox.png', title: 'Top-Bottom Carton Box', subtitle: 'TBC-8900-2C',
      order: 'Packaging Products', votes: '\$ 8.95',
    ),
    QrCode(img: 'assets/images/cartoonsheet.png', title: 'Paper Sheets', subtitle: 'PS-356688',
      order: 'Packaging Products', votes: '\$ 10.00',
    ),
    QrCode(img: 'assets/images/greenbasket.png', title: 'Digital Printed Box', subtitle: 'DPB-30030040',
      order: 'Packaging Products', votes: '\$ 4.50',
    ),
    QrCode(img: 'assets/images/bluebox.png', title: 'Digital Printed Top Bottom Box', subtitle: 'DPTBB-25023900',
      order: 'Packaging Products', votes: '\$ 23.00',
    ),
    QrCode(img: 'assets/images/pinkbox.png', title: 'Digital Printed Offset Box', subtitle: 'DPOB-570998-12C',
      order: 'Packaging Products', votes: '\$ 5.60',
    ),
    QrCode(img: 'assets/images/brownbox.png', title: 'Archive Box', subtitle: 'AB-7878990',
      order: 'Packaging Products', votes: '\$ 9.30',
    ),
    QrCode(img: 'assets/images/box.png', title: 'RSC Cartons', subtitle: 'MB-203998A',
      order: 'Packaging Products', votes: '\$ 5.80',
    ),
    QrCode(img: 'assets/images/carton.png', title: 'RSC Cartons', subtitle: 'RSC-6009-4C',
      order: 'Packaging Products', votes: '\$ 3.80',
    ),
    QrCode(img: 'assets/images/hairbox.png', title: 'Top-Bottom Carton Box', subtitle: 'TBC-8900-2C',
      order: 'Packaging Products', votes: '\$ 8.95',
    ),
    QrCode(img: 'assets/images/cartoonsheet.png', title: 'Paper Sheets', subtitle: 'PS-356688',
      order: 'Packaging Products', votes: '\$ 10.00',
    ),
    QrCode(img: 'assets/images/greenbasket.png', title: 'Digital Printed Box', subtitle: 'DPB-30030040',
      order: 'Packaging Products', votes: '\$ 4.50',
    ),
    QrCode(img: 'assets/images/bluebox.png', title: 'Digital Printed Top Bottom Box', subtitle: 'DPTBB-25023900',
      order: 'Packaging Products', votes: '\$ 23.00',
    ),
    QrCode(img: 'assets/images/pinkbox.png', title: 'Digital Printed Offset Box', subtitle: 'DPOB-570998-12C',
      order: 'Packaging Products', votes: '\$ 5.60',
    ),
    QrCode(img: 'assets/images/brownbox.png', title: 'Archive Box', subtitle: 'AB-7878990',
      order: 'Packaging Products', votes: '\$ 9.30',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Item',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color(0xff27262A)),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Icon(
              Icons.search_sharp,
              size: 22,
              color: Color(0xff27262A),
            ),
          ),
        ],
      ),
      body: _getBody(context),
    );
  }
    Widget _getBody(BuildContext context){
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 21,),
              Container(
                width: 80,
                height: 24,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),
                  color: Colors.deepPurpleAccent.shade100,
                ),
                child: Text(
                  'Active (0)',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff622CEA)),

                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Color(0xffF5F6F8),
                ),
                width: 95,
                height: 24,
                child: Text(
                  'Inactive (0)',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff919191)),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Color(0xffF5F6F8),
                ),
                width: 135,
                height: 24,
                child: Text(
                  'Under Review (0)',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff919191)),
                  textAlign: TextAlign.center,
                ),
              ),
              Image.asset(
                'assets/images/menu.png',
                width: 24,
                height: 24,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: sellerItemsList.length,
              itemBuilder: (context, i ){
              return Column(
                children: [
                  SellerItemMainTwoElements(itemselements: sellerItemsList[i]),
                  if(i == sellerItemsList.length - 1)
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            width: double.infinity,
                            height:48,
                            child: ElevatedButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SellerItemAddItemSimple(),));
                            }, child: Center(
                              child: Text('Add Item', style: TextStyle(fontSize: 16,
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
                ],
              );
          }),
        )
      ],
    );
    }
}