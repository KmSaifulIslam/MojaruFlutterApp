import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:mojaru_f_app/models/Gifts.dart';
import 'package:mojaru_f_app/models/LiteratureGroups.dart';
import 'package:mojaru_f_app/models/PhysicianGroups.dart';
import 'package:mojaru_f_app/models/PhysicianSamples.dart';
import 'package:mojaru_f_app/widgets/big_text.dart';
import 'package:mojaru_f_app/widgets/small_text.dart';

import '../utils/dimensions.dart';

class PgSamplePage extends StatefulWidget {
  const PgSamplePage({Key? key}) : super(key: key);

  @override
  State<PgSamplePage> createState() => _PgSamplePageState();
}

class _PgSamplePageState extends State<PgSamplePage> {
  _PgSamplePageState() {
    _selectedPG = _physicianGroupsSizeList[0];
    _selectedLG = _literatureGroupsSizeList[0];
    _selectedPS = _physicianSamplesSizeList[0];
    _selectedGift = _giftSizeList[0];

  }

  var _value = "-1";
  String stringResponse = "Hello...";
  List _giftSizeList = ["Choose"];
  List _physicianGroupsSizeList = ["Choose"];
  List _literatureGroupsSizeList = ["Choose"];
  List _physicianSamplesSizeList = ["Choose"];
  String? _selectedGift = "";
  String? _selectedPG = "";
  String? _selectedLG = "";
  String? _selectedPS = "";
  List _itemList = ["Select"];

  late List gifts;
  late List physicianGroups;
  late List literatureGroups;
  late List physicianSamples;

  Future fetchData() async{
    var url = Uri.http("api.npoint.io","/7c19bf809c44af11b717");
    var response = await http.get(url);

    if(response.statusCode == 200) {
      setState(() {
        stringResponse = "gift Data";

        Map data = jsonDecode(response.body);

        gifts = data['gifts'];
        physicianGroups = data['physicianGroups'];
        literatureGroups = data['literatureGroups'];
        physicianSamples = data['physicianSamples'];


        gifts.forEach((element) {
          print(element);

          Map g = element;
          g.forEach((key, value) {
            if(key == 'name'){
              _itemList.add(value.toString());
              _giftSizeList.add(value);
              print(value);
            }

          });
        });

        physicianGroups.forEach((element) {
          print(element);

          Map pg = element;
          pg.forEach((key, value) {
            if(key == 'name'){
              _itemList.add(value.toString());
              _physicianGroupsSizeList.add(value);
              print(value);
            }

          });
        });

        literatureGroups.forEach((element) {
          print(element);

          Map lg = element;
          lg.forEach((key, value) {
            if(key == 'name'){
              _itemList.add(value.toString());
              _literatureGroupsSizeList.add(value);
              print(value);
            }

          });
        });

        physicianSamples.forEach((element) {

          print(element);

          Map ps = element;
          ps.forEach((key, value) {
            if(key == 'name'){
              _physicianSamplesSizeList.add(value);
              print(value);
            }

          });
        });
      });
    }


    print("Response status : ${response.statusCode}");
    // print("Response body : ${response.body}");
  }

  @override
  void initState(){
    fetchData();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: BigText(text: "Mojaru",), elevation: 3,),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(text: "PG/Sample"),
              SizedBox(height: Dimensions.height30,),

              SizedBox(
                height: Dimensions.height20*3,
                child: DropdownButtonFormField(
                  style: TextStyle(color: Colors.cyan),
                  decoration: InputDecoration(
                      labelText: "Product Name",
                      border: OutlineInputBorder()
                  ),

                  value: _selectedPG,
                  items: _physicianGroupsSizeList.map(
                          (e)=> DropdownMenuItem(child: Text(e), value: e,)
                  ).toList(),
                  onChanged: (val){},

                  // value: _value,
                  // items: [
                  //   DropdownMenuItem(child: Text("Choose"), value: "-1",),
                  //   DropdownMenuItem(child: Text("Item 1"), value: "1",),
                  //   DropdownMenuItem(child: Text("Item-2"), value: "2",),
                  //   DropdownMenuItem(child: Text("Item-3"), value: "3",),
                  //   DropdownMenuItem(child: Text("Item-4"), value: "4",),
                  //   DropdownMenuItem(child: Text("Item-5"), value: "5",),
                  // ],
                  // onChanged: (v){},
                ),
              ),
              // SizedBox(
              //   height: Dimensions.height20*3,
              //   child: TextFormField(
              //     decoration: const InputDecoration(
              //         hintText: "Choose",
              //         hintStyle: TextStyle(color: Colors.cyan, fontSize: 15),
              //         labelText: "Product Group",
              //         floatingLabelBehavior: FloatingLabelBehavior.always,
              //         suffixIcon: Icon(Icons.arrow_drop_down),
              //         border: OutlineInputBorder()
              //     ),
              //   ),
              // ),

              SizedBox(height: Dimensions.height20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: Dimensions.height20*3.1,
                    width: Dimensions.screenWidth/1.4,
                    child: DropdownButtonFormField(
                      style: TextStyle(color: Colors.cyan),
                      decoration: InputDecoration(
                          labelText: "Literature",
                          border: OutlineInputBorder()
                      ),

                      value: _selectedLG,
                      items: _literatureGroupsSizeList.map(
                              (e)=> DropdownMenuItem(child: Text(e), value: e,)
                      ).toList(),
                      onChanged: (val){},

                      // value: _value,
                      // items: [
                      //   DropdownMenuItem(child: Text("Choose"), value: "-1",),
                      //   DropdownMenuItem(child: Text("Item 1"), value: "1",),
                      //   DropdownMenuItem(child: Text("Item-2"), value: "2",),
                      //   DropdownMenuItem(child: Text("Item-3"), value: "3",),
                      //   DropdownMenuItem(child: Text("Item-4"), value: "4",),
                      //   DropdownMenuItem(child: Text("Item-5"), value: "5",),
                      // ],
                      // onChanged: (v){},
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: Dimensions.height20*3,
                    width: Dimensions.width45*3,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                          hintText: "00",
                          hintStyle: TextStyle(color: Colors.black45, fontSize: 15),

                          border: OutlineInputBorder()
                      ),
                    ),
                  ),

                ],
              ),

              SizedBox(height: Dimensions.height20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: Dimensions.height20*3.1,
                    width: Dimensions.screenWidth/1.4,
                    child: DropdownButtonFormField(
                      style: TextStyle(color: Colors.cyan),
                      decoration: InputDecoration(
                          labelText: "Physician Sample",
                          border: OutlineInputBorder()
                      ),
                      value: _selectedPS,
                      items: _physicianSamplesSizeList.map(
                              (e)=> DropdownMenuItem(child: Text(e), value: e,)
                      ).toList(),
                      onChanged: (val){},

                      // value: _value,
                      // items: [
                      //   DropdownMenuItem(child: Text("Choose"), value: "-1",),
                      //   DropdownMenuItem(child: Text("Item 1"), value: "1",),
                      //   DropdownMenuItem(child: Text("Item-2"), value: "2",),
                      //   DropdownMenuItem(child: Text("Item-3"), value: "3",),
                      //   DropdownMenuItem(child: Text("Item-4"), value: "4",),
                      //   DropdownMenuItem(child: Text("Item-5"), value: "5",),
                      // ],
                      // onChanged: (v){},
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: Dimensions.height20*3,
                    width: Dimensions.width45*3,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                          hintText: "00",
                          hintStyle: TextStyle(color: Colors.black45, fontSize: 15),

                          border: OutlineInputBorder()
                      ),
                    ),
                  ),

                ],
              ),

              SizedBox(height: Dimensions.height20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: Dimensions.height20*3.1,
                    width: Dimensions.screenWidth/1.4,
                    child: DropdownButtonFormField(
                      style: TextStyle(color: Colors.cyan),
                      decoration: InputDecoration(
                          labelText: "Gift",
                          border: OutlineInputBorder()
                      ),

                      value: _selectedGift,
                      items: _giftSizeList.map(
                              (e)=> DropdownMenuItem(child: Text(e), value: e,)
                      ).toList(),
                      onChanged: (val){},

                      // value: _value,
                      // items: [
                      //   DropdownMenuItem(child: Text("Choose"), value: "-1",),
                      //   DropdownMenuItem(child: Text("Item 1"), value: "1",),
                      //   DropdownMenuItem(child: Text("Item-2"), value: "2",),
                      //   DropdownMenuItem(child: Text("Item-3"), value: "3",),
                      //   DropdownMenuItem(child: Text("Item-4"), value: "4",),
                      //   DropdownMenuItem(child: Text("Item-5"), value: "5",),
                      // ],
                      // onChanged: (v){},
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: Dimensions.height20*3,
                    width: Dimensions.width45*3,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                          hintText: "00",
                          hintStyle: TextStyle(color: Colors.black45, fontSize: 15),

                          border: OutlineInputBorder()
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: Dimensions.height45,),

              SizedBox(
                height: Dimensions.height20*3,
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: "input text",
                      hintStyle: TextStyle(color: Colors.cyan, fontSize: 15),
                      labelText: "Accompanied with",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder()
                  ),
                ),
              ),
              SizedBox(height: Dimensions.height20,),

              Container(
                alignment: AlignmentDirectional.topStart,
                height: Dimensions.height45*3,
                child: TextFormField(
                  minLines: 3,
                  maxLines: 5,
                  decoration: const InputDecoration(
                      hintText: "input text",
                      hintStyle: TextStyle(color: Colors.cyan, fontSize: 15),
                      labelText: "Remarks",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder()
                  ),
                ),
              ),
              SizedBox(height: Dimensions.height20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, "/details_page");
                    },
                    child: Container(
                      width: Dimensions.width10*15,
                      height: Dimensions.height10*5,
                      // color: Color(0xFF00838F),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xFF3B9FA4),
                        borderRadius: BorderRadius.circular(Dimensions.radius20/2)
                      ),
                      child: SmallText(
                        text: "SUBMIT",
                        color: Colors.white,
                        size: Dimensions.font20,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
