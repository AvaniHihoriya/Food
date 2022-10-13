import 'package:flutter/cupertino.dart';
import 'package:food/utils/dimensions.dart';
import 'package:food/widgets/small_text.dart';

class IconAndText extends StatelessWidget {
  final IconData icon;
  final String text;
  // final Color color;
  final Color iconcolor;

  const IconAndText({Key? key, required this.icon,
    required this.text,
    // required this.color,
    required this.iconcolor,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: iconcolor,size: Dimensions.iconsize24,),
        SizedBox(width: 5,),
        Smalltext(text: text,),
      ],
    );
  }
}
