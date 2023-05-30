import 'package:flutter/material.dart';
import 'package:mojaru_f_app/widgets/small_text.dart';


import '../utils/colors.dart';
import '../utils/dimensions.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  _ExpandableTextWidgetState createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;
  double textHeight = Dimensions.screenHeight/5.63;

  @override
  void initState(){
    super.initState();
    if(widget.text.length > textHeight){
      firstHalf =widget.text.substring(0, textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt()+1, widget.text.length);
    } else{
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?Text(firstHalf):Column(
        children: [
          Text( hiddenText?(firstHalf+"..."):(firstHalf+secondHalf),),
          InkWell(
            onTap: (){

            },
            child: Row(
              children: [
                // Text("Show morer"),
                // Icon(Icons.arrow_drop_down, color: AppColors.mainColor,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
