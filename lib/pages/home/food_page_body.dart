import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/utils/dimensions.dart';
import 'package:food/widgets/app_column.dart';
import 'package:food/widgets/big_text.dart';
import 'package:food/widgets/icon_text_widgets.dart';
import 'package:food/widgets/small_text.dart';

class Foodpagebody extends StatefulWidget {
  const Foodpagebody({Key? key}) : super(key: key);

  @override
  State<Foodpagebody> createState() => _FoodpagebodyState();
}

class _FoodpagebodyState extends State<Foodpagebody> {
  PageController pageController = PageController(viewportFraction: 0.8);
  var _currentpage=0.0;
  double scaleFactor=0.8;
  double _height = Dimensions.pageviewcontainer;


  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      setState((){
        _currentpage = pageController.page!;
      });
    });
  }

  @override
  void dispose(){
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //slider section
        Container(
          height: Dimensions.pageview,
          // color: Colors.red,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context,position){
                return Column(
                  children: [
                    _buildpageitem(position),
                  ],
                );
              }
          ),
        ),

        //dots
        new DotsIndicator(
          dotsCount: 5,
          position: _currentpage,
          decorator: DotsDecorator(
            activeColor: Color(0xFF89dad0),
            size: const Size.square(9.0),
            activeSize: const Size(18.0 ,9.0 ),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
        ),

        //popular text
        SizedBox(height: Dimensions.height30,),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30,),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end  ,
            children: [
              Bigtext(text: "Polpular",),
              SizedBox(width: Dimensions.width10,),
              Container(
                margin: EdgeInsets.only(bottom: 3),
                child: Bigtext(text: ".",color: Colors.black26,),
              ),
              SizedBox(width: Dimensions.width10,),
              Container(
                margin: EdgeInsets.only(bottom: 2),
                child: Smalltext(text: "Food Pairing",),
              ),
            ],
          ),
        ),

        //list of food & images

         ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context,index){
              return Container(
                margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20,bottom: Dimensions.height10),
                child: Row(
                  children: [
                    //image section
                    Container(
                      width: Dimensions.listviewImgsize,
                      height: Dimensions.listviewImgsize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius20),
                        color: Colors.white38,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/pancake.jpeg"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height:  Dimensions.listviewtextcontsize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius20),
                            bottomRight: Radius.circular(Dimensions.radius20),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: Dimensions.width10 ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Bigtext(text: "Nutritios fruit meal in china"),
                              SizedBox(height: Dimensions.height10,),
                              Smalltext(text: "with chinese charactrities"),
                              SizedBox(height: Dimensions.height10,),
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
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),


      ],
    );
  }
  Widget _buildpageitem(int index) {
    Matrix4 matrix= new Matrix4.identity();
    if(index==_currentpage.floor()){
      var currScale= 1-(_currentpage-index)*(1-scaleFactor);
      var currTrans =_height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
    else if(index==_currentpage.floor()+1){
      var currScale= scaleFactor+(_currentpage-index)*(1-scaleFactor);
      var currTrans =_height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
    else if(index==_currentpage.floor()-1){
      var currScale= 1-(_currentpage-index)*(1-scaleFactor);
      var currTrans =_height*(1-currScale)/2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }
    else{
      var currScale =0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, _height*(1-scaleFactor)/2 , 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageviewcontainer,
            margin: EdgeInsets.only(left: Dimensions.width10 , right: Dimensions.width10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius30),
              color: index.isEven?Color(0xffc98511) : Color(0xffc55661),
              image: DecorationImage(
                  image: AssetImage("assets/images/pancake.jpeg"),
                  fit: BoxFit.cover
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageviewTextcontainer,
              margin: EdgeInsets.only(left: Dimensions.width30, right:  Dimensions.width30,bottom:  Dimensions.height30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius: 5,
                    offset: Offset(0,5),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5,0),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5,0),
                  ),
                ],
              ),
              child: Container(
                padding: EdgeInsets.only(top: Dimensions.height15,left: 10),
                child: AppColumn(text: "Dessert",),
              ),
            ),
          ),

        ],
      ),
    );
}
}
