import 'package:contr_project/Presentation/Views/seller_tem_main_two/seller_item_main_two.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SellerItemMain extends StatelessWidget{
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'No Item yet',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff27262A)),
              ),
              SizedBox(height: 10,),
              Text(
                'Try adding your first product or service',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff919191)),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90),
                child: Container(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SellerItemMainTwo(),));
                    },
                    child: Text(
                      'Add New Item',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffFFFFFF),
                      ),
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
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90),
                child: Container(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {

                    },
                    child: Text(
                      'Import Items',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff622CEA),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffFFFFFF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      side: BorderSide(color: Color(0xff622CEA), width: 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
   }
}