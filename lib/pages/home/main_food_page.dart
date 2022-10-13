import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/utils/dimensions.dart';
import 'package:food/widgets/big_text.dart';
import 'package:food/widgets/small_text.dart';
import 'package:food/utils/dimensions.dart';
// import 'package:food/home/food_page_body.dart';

import 'food_page_body.dart';

class main_food_page extends StatefulWidget {
  const main_food_page({Key? key}) : super(key: key);

  @override
  State<main_food_page> createState() => _main_food_pageState();
}

class _main_food_pageState extends State<main_food_page> {
  @override
  Widget build(BuildContext context) {
    // print("Current height is "+MediaQuery.of(context).size.height.toString());
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
          child: Column(
            children: [
              //===============================for header=====================================
              Container(
                child: Container(
                  margin: EdgeInsets.only(top: Dimensions.height30,bottom: Dimensions.height15),
                  padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Bigtext(text: "India",color: Color(0xFF89dad0),),
                          Row(
                            children: [
                              Smalltext(text: "Bhopal",color: Colors.black45,size: 13,),
                              Icon(Icons.arrow_drop_down,color: Colors.black45),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: Dimensions.height45,
                        width: Dimensions.height45,
                        child: Icon(Icons.search,color: Colors.white,size: Dimensions.iconsize24,),
                        decoration: BoxDecoration(
                            // color: Colors.deepOrangeAccent.shade200,
                          color: Color(0xFF89dad0),
                            borderRadius: BorderRadius.circular(Dimensions.radius15)
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //===============================for body=====================================
              Expanded(child: SingleChildScrollView(
                child: Foodpagebody(),
              )),
            ],
          ),
        ),

    );
  }
}
