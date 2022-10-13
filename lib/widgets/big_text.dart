import 'package:flutter/cupertino.dart';
import 'package:food/utils/dimensions.dart';

class Bigtext extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;

  Bigtext({Key? key,
    this.color = const Color(0xdf333232),  //0xFF89dad0
    required this.text,
    this.size=0,
    this.overflow=TextOverflow.ellipsis
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontSize: size==0?Dimensions.font20:size,
      ),

    );
  }
}
