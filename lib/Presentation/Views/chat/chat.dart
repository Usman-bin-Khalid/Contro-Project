import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('assets/images/chatingimg.png', width:36 , height:36 ,),
            SizedBox(width: 10,),
            Text('+6012 777 8888', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, 
            color: Color(0xff27262A)),),
          ],
        ),
      ),
      body: _getBody(context),
    );
  }
   Widget _getBody(BuildContext context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: Image.asset('assets/images/chatimg5.png', width: 32, height: 32,),
          title: Row(
            children: [
              Image.asset('assets/images/speaker.png', width: 14, height:12 ,),
              SizedBox(width: 10,),
              Text('22”', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff27262A)),),
            ],
          ),
        ),
        ListTile(
          leading: Image.asset('assets/images/chatimg5.png', width: 32, height: 32,),
          title: Row(
            children: [
              Image.asset('assets/images/speaker.png', width: 14, height:12 ,),
              SizedBox(width: 10,),
              Text('11”', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff27262A)),),
            ],
          ),
        ),
        ListTile(
          leading: Image.asset('assets/images/chatimg5.png', width: 32, height: 32,),
          // subtitle: Image.asset('assets/images/chatbox.png' , width: 100, height:100 ,)
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 36,
                width: 196,
                decoration: BoxDecoration(
                  color: Color(0xff622CEA),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Text('The item is available.', style: TextStyle(fontSize:16 , fontWeight: FontWeight.w400,
                  color: Color(0xffFFFFFF)),),
                ),
              ),
              SizedBox(width: 10,),
              Image.asset('assets/images/contrologochat.png', width: 32, height: 32,),
            ],
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 290,
                height: 36,
                decoration: BoxDecoration(
                  color: Color(0xff622CEA),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Center(
                  child: Text('Click here to purchase immediate.', style: TextStyle(fontSize:16 , fontWeight: FontWeight.w400,
                      color: Color(0xffFFFFFF)),),
                ),
              ),
              SizedBox(width: 10,),
              Image.asset('assets/images/contrologochat.png', width: 32, height: 32,),
            ],
          ),
        ),
        SizedBox(height: 20,),
        ListTile(
          leading: Image.asset('assets/images/chatimg5.png', width: 32, height: 32,),
          title: Text('Do you have size XL and be able to customise as my size? what is the minimum quantity?', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,
          color: Color(0xff27262A)),),
        ),

        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Image.asset('assets/images/plus.png', width: 24, height: 24,),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset('assets/images/Camera.png', width: 24, height: 24,),
                          SizedBox(width: 20,),
                          Image.asset('assets/images/Record Audio.png', width: 14, height:20,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 7,),
      ],
    );
   }
}