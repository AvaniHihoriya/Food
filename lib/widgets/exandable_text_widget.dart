import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/utils/dimensions.dart';
import 'package:food/widgets/small_text.dart';

class Expandable extends StatefulWidget {
  final String text;
  const Expandable({Key? key, required this.text}) : super(key: key);

  @override
  State<Expandable> createState() => _ExpandableState();
}

class _ExpandableState extends State<Expandable> {
  late String firsthalf;
  late String secondhalf;

  bool hiddenText = true;

  double textheight = Dimensions.screenheight/5.63;

  @override
  void initState(){
    super.initState();
    if(widget.text.length>textheight){
      firsthalf = widget.text.substring(0,textheight.toInt());
      secondhalf = widget.text.substring(textheight.toInt()+1, widget.text.length);
    }
    else{
      firsthalf = widget.text;
      secondhalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondhalf.isEmpty?Smalltext(color: Color(0xff9a9999),size: Dimensions.font16,text: firsthalf):Column(
        children: [
          Smalltext(height: 1.6,color: Color(0xff9a9999),size: Dimensions.font16, text: hiddenText?(firsthalf+"..."):(firsthalf+secondhalf)),
          InkWell(
            onTap: (){
              setState((){
                hiddenText=!hiddenText;
              });
            },
            child: Row(
              children: [
                hiddenText?Smalltext(text: "Show more",color: Color(0xFF89dad0),):Smalltext(text: "Show less",color: Color(0xFF89dad0),),
                Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up,color: Color(0xFF89dad0),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
