import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/widgets/app_column.dart';
import 'package:food/widgets/appicon.dart';
import 'package:food/widgets/exandable_text_widget.dart';

import '../../utils/dimensions.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_text_widgets.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.PopularFoodImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/pancake.jpeg"),
                )
              ),
          ),
          ),
          //icon widget
          Positioned(
            top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios,),
                  AppIcon(icon: Icons.shopping_cart_outlined),
                ],
              ),
          ),
          //introduction of food
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.PopularFoodImgSize-20,
              child: Container(
                padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20,top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                  topRight: Radius.circular( Dimensions.radius20),
                  topLeft: Radius.circular( Dimensions.radius20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: "Pancake"),
                    SizedBox(height: Dimensions.height20,),
                    Bigtext(text: "Introduce"),
                    SizedBox(height: Dimensions.height20,),
                    Expanded(
                      child: SingleChildScrollView(
                          child: Expandable(text: "Fluffy and soft banana pancakes are made from scratch,egg and whisk in the milk, melted butter, and vanilla.sweet, soft, and similar to cake-- but flat.This well-rounded fragrance is composed of notes of freshly baked cake, hot maple syrup, sweet cream butter, and rich buttermilk, all sitting on a wonderful base note of a nice lingering vanilla.")
                      ),
                    ),
                  ],
                ),
          )),


        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(top: Dimensions.height30,bottom: Dimensions.height20,left: Dimensions.width20,right: Dimensions.width20),
        decoration: BoxDecoration(
          color: Color(0xffecebeb),
          borderRadius: BorderRadius.only(
            topRight:Radius.circular(Dimensions.radius20*2),
            topLeft: Radius.circular(Dimensions.radius20*2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.remove,color: Color(0xff858585),),
                  SizedBox(width: Dimensions.width10/2),
                  Bigtext(text: "0"),
                  SizedBox(width: Dimensions.width10/2),
                  Icon(Icons.add,color: Color(0xff858585),),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
              child: Bigtext(text: "\$10 | Add to cart",color: Colors.white,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Color(0xFF89dad0),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
