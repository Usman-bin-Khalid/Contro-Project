import 'package:contr_project/Presentation/Views/seller_item_deal_method/seller_item_deal_method.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SellerItemVarientsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Set Price & Inventory',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color(0xff27262A)),
        ),
      ),
      body: _getBody(context),
    );
  }

  Widget _getBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          ListTile(
            title: Text(
              'Option + Option',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff27262A)),
            ),
            trailing: Image.asset(
              'assets/images/delicon.png',
              width: 18,
              height: 18,
            ),
          ),
          ListTile(
            title: Text(
              'Price (RM)',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff27262A)),
            ),
            trailing: Text(
              '0.00',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Color(0xff919191)),
            ),
          ),
          ListTile(
            title: Text(
              'Inventory',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff27262A)),
            ),
            trailing: Text(
              '0',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Color(0xff919191)),
            ),
          ),
          ListTile(
            title: Text(
              'SKU (Optional)',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff27262A)),
            ),
            trailing: Text(
              'Enter SKU',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Color(0xff919191)),
            ),
          ),
          ListTile(
            title: Text(
              'SKU (Optional)',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff27262A)),
            ),
            trailing: Text(
              'Enter SKU',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Color(0xff919191)),
            ),
          ),
      
          ListTile(
            title: Text(
              'Option + Option',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff27262A)),
            ),
            trailing: Image.asset(
              'assets/images/delicon.png',
              width: 18,
              height: 18,
            ),
          ),
          ListTile(
            title: Text(
              'Price (RM)',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff27262A)),
            ),
            trailing: Text(
              '0.00',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Color(0xff919191)),
            ),
          ),
          ListTile(
            title: Text(
              'Inventory',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff27262A)),
            ),
            trailing: Text(
              '0',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Color(0xff919191)),
            ),
          ),
          ListTile(
            title: Text(
              'SKU (Optional)',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff27262A)),
            ),
            trailing: Text(
              'Enter SKU',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Color(0xff919191)),
            ),
          ),
          ListTile(
            title: Text(
              'SKU (Optional)',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff27262A)),
            ),
            trailing: Text(
              'Enter SKU',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Color(0xff919191)),
            ),
          ),
      
          ListTile(
            title: Text(
              'Option + Option',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff27262A)),
            ),
            trailing: Image.asset(
              'assets/images/delicon.png',
              width: 18,
              height: 18,
            ),
          ),
          ListTile(
            title: Text(
              'Price (RM)',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff27262A)),
            ),
            trailing: Text(
              '0.00',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Color(0xff919191)),
            ),
          ),
          ListTile(
            title: Text(
              'Inventory',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff27262A)),
            ),
            trailing: Text(
              '0',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Color(0xff919191)),
            ),
          ),
          ListTile(
            title: Text(
              'SKU (Optional)',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff27262A)),
            ),
            trailing: Text(
              'Enter SKU',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Color(0xff919191)),
            ),
          ),
          ListTile(
            title: Text(
              'SKU (Optional)',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff27262A)),
            ),
            trailing: Text(
              'Enter SKU',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400,color: Color(0xff919191)),
            ),
          ),
          SizedBox(height: 10,),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  height: 48,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 165,
                        child: ElevatedButton(onPressed: (){}, child: Text('Bulk Edit', style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.w400, color: Color(0xff622CEA),
                        ),
                          textAlign: TextAlign.center,),
                          style: ElevatedButton.styleFrom(backgroundColor: Color(0xffFFFFFF),
                            elevation: 0,
                            side: BorderSide(color: Color(0xff622CEA), width: 1),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
          
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width: 165,
                        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => SellerItemDealMethod(),));
                        }, child: Text('Done', style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.w400, color: Color(0xffFFFFFF),
                        ),
                          textAlign: TextAlign.center,),
                          style: ElevatedButton.styleFrom(backgroundColor: Color(0xff622CEA),
                            elevation: 0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                          ),
          
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 7,),
            ],
          
          ),
        ],
      ),
    );
  }
}
