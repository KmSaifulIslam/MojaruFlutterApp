import 'package:flutter/material.dart';
import 'package:mojaru_f_app/widgets/big_text.dart';
import 'package:mojaru_f_app/widgets/small_text.dart';

import '../utils/dimensions.dart';

class PgSamplePage extends StatefulWidget {
  const PgSamplePage({Key? key}) : super(key: key);

  @override
  State<PgSamplePage> createState() => _PgSamplePageState();
}

class _PgSamplePageState extends State<PgSamplePage> {
  var _value = "-1";
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
                  value: _value,
                  items: [
                    DropdownMenuItem(child: Text("Choose"), value: "-1",),
                    DropdownMenuItem(child: Text("Item 1"), value: "1",),
                    DropdownMenuItem(child: Text("Item-2"), value: "2",),
                    DropdownMenuItem(child: Text("Item-3"), value: "3",),
                    DropdownMenuItem(child: Text("Item-4"), value: "4",),
                    DropdownMenuItem(child: Text("Item-5"), value: "5",),
                  ],
                  onChanged: (v){},
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
                      value: _value,
                      items: [
                        DropdownMenuItem(child: Text("Choose"), value: "-1",),
                        DropdownMenuItem(child: Text("Item 1"), value: "1",),
                        DropdownMenuItem(child: Text("Item-2"), value: "2",),
                        DropdownMenuItem(child: Text("Item-3"), value: "3",),
                        DropdownMenuItem(child: Text("Item-4"), value: "4",),
                        DropdownMenuItem(child: Text("Item-5"), value: "5",),
                      ],
                      onChanged: (v){},
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
                      value: _value,
                      items: [
                        DropdownMenuItem(child: Text("Choose"), value: "-1",),
                        DropdownMenuItem(child: Text("Item 1"), value: "1",),
                        DropdownMenuItem(child: Text("Item-2"), value: "2",),
                        DropdownMenuItem(child: Text("Item-3"), value: "3",),
                        DropdownMenuItem(child: Text("Item-4"), value: "4",),
                        DropdownMenuItem(child: Text("Item-5"), value: "5",),
                      ],
                      onChanged: (v){},
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
                      value: _value,
                      items: [
                        DropdownMenuItem(child: Text("Choose"), value: "-1",),
                        DropdownMenuItem(child: Text("Item 1"), value: "1",),
                        DropdownMenuItem(child: Text("Item-2"), value: "2",),
                        DropdownMenuItem(child: Text("Item-3"), value: "3",),
                        DropdownMenuItem(child: Text("Item-4"), value: "4",),
                        DropdownMenuItem(child: Text("Item-5"), value: "5",),
                      ],
                      onChanged: (v){},
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
