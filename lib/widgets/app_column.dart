import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/widgets/small_text.dart';

import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_text_widgets.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Bigtext(text:text,size: Dimensions.font26,),
        SizedBox(height: Dimensions.height10,),
        Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
              children: List.generate(5,
                    (index) => Icon(Icons.star,color: Color(0xFF89dad0),size: 15 ,),),
            ),
            SizedBox(width: 15,),
            Smalltext(text: "4.5"),
            SizedBox(width: 15,),
            Smalltext(text: "1582 comments"),
            SizedBox(width: 15,),
          ],
        ),
        SizedBox(height: Dimensions.height20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndText(
              icon: Icons.circle_sharp,
              text: "Normal",
              iconcolor: Color(0xfff6cf89), ),
            // SizedBox(width: 15,),
            IconAndText(
              icon: Icons.location_on,
              text: "1.7 km",
              iconcolor: Color(0xFF89dad0), ),
            // SizedBox(width: 15,),
            IconAndText(
              icon: Icons.access_time_rounded,
              text: "10 min",
              iconcolor: Color(0xfffa7a69), ),

          ],
        ),
      ],
    );
  }
}
