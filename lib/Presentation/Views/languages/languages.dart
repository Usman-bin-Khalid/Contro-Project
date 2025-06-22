import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Languages extends StatefulWidget{
  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  List<String> languageList = [
    'English' , 'Urdu' , 'Persian', 'Hindi', 'Arabic', 'Punjabi', 'Pashto', 'Saraiki',
  ];
  List<int> selectedIndex = [];
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text('Select Language', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),),
          
       ),
       body: _getBody(context),
     );
  }

   Widget _getBody(BuildContext context){
    return Column(
      children: [
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Container(
            width: 354,
            height: 48,
            child: TextField(
              controller: searchController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                label: Text(
                  'Search',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff464646)),
                ),
                prefixIcon:
                Container(width: 24, height: 24, child: Icon(Icons.search)),
                suffixIcon:
                Container(width: 24, height: 24, child: Icon(Icons.cancel)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 36,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: languageList.length,
              itemBuilder: (context, i){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: InkWell(
                onTap: (){
                  if(selectedIndex.contains(i)){
                    selectedIndex.remove(i);
                  }else{
                    selectedIndex.add(i);
                  }
                  setState(() {

                  });
                },
                child: Container(
                  width: 354,
                  height: 24,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(languageList[i].toString(), style: TextStyle(fontSize: 18, color: selectedIndex.contains(i) ?
                      Colors.blue : Colors.black
                      ), ),
                      Icon(Icons.check_circle_outline, color: selectedIndex.contains(i) ? Colors.blue
                        : Colors.black,),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ],
    );
   }
}