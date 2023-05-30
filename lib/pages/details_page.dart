import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';
import '../widgets/app_icon.dart';
import '../widgets/big_text.dart';
import '../widgets/exandable_text_widget.dart';
import '../widgets/small_text.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularImageSize,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          "assets/images/img.jpg"
                      )
                  )
              ),
            ),
          ),
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.line_weight, color: Color(0xffe2d2fa), size: 30),
                Icon(Icons.person_2_outlined, color: Color(0xffe2d2fa), size: 30),
              ],
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularImageSize-40,
              child: Container(
                  padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20,top:Dimensions.height20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(Dimensions.radius20),
                        topLeft: Radius.circular(Dimensions.radius20),
                      ),
                      color: Colors.white
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BigText(text: "Solar System"),
                          AppIcon(icon: Icons.favorite_outline),
                        ],
                      ),
                      SizedBox(height: Dimensions.height10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              BigText(text: "For", size: Dimensions.font20,),
                              SizedBox(width: Dimensions.width10,),
                              Container(
                                padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20,top: 6, bottom: 6),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.contnerColor,
                                ),
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.person_2_outlined, color: AppColors.mainColor,),
                                        SizedBox(width: Dimensions.width10,),
                                        SmallText(text: "6 - 9 Years Old", color: AppColors.paraColor,),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: Dimensions.height45),
                          Container(
                            padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20,top: 6, bottom: 6),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.contnerColor,
                            ),
                            child: SmallText(text: "Science", color: AppColors.paraColor,),
                          ),
                        ],
                      ),
                      SizedBox(height: Dimensions.height10,),
                      const ExpandableTextWidget(text: "You may think that the earth is a pretty big place, but the Earth isn't even the biggest planet is the solar system. the Earth isn't even the biggest planet is the solar system."),
                      SizedBox(height: Dimensions.height10,),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              BigText(text: "Lessons Preview"),
                            ],
                          ),
                          SizedBox(height: Dimensions.height10,),
                          SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Opacity(
                                        opacity:0.5,
                                        child: Container(
                                          height: 100,
                                          width: 200,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(Dimensions.radius15),
                                              color: AppColors.mainColor,
                                              image: const DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    "assets/images/img2.jpg"
                                                ),
                                              )
                                          ),
                                        ),
                                      ),
                                      Icon(Icons.play_circle_outline, color: Colors.white,size: Dimensions.iconSize16*2,),
                                    ],
                                  ),
                                  SizedBox(width: Dimensions.width10,),
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Opacity(
                                        opacity:0.5,
                                        child: Container(
                                          height: 100,
                                          width: 200,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(Dimensions.radius15),
                                              color: AppColors.mainColor,
                                              image: const DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    "assets/images/img3.jpg"
                                                ),
                                              )
                                          ),
                                        ),
                                      ),
                                      Icon(Icons.play_circle_outline, color: Colors.white,size: Dimensions.iconSize16*2,),
                                    ],
                                  ),
                                  SizedBox(width: Dimensions.width10,),
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Opacity(
                                        opacity:0.5,
                                        child: Container(
                                          height: 100,
                                          width: 200,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(Dimensions.radius15),
                                              color: AppColors.mainColor,
                                              image: const DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    "assets/images/img2.jpg"
                                                ),
                                              )
                                          ),
                                        ),
                                      ),
                                      Icon(Icons.play_circle_outline, color: Colors.white,size: Dimensions.iconSize16*2,),
                                    ],
                                  ),
                                  SizedBox(width: Dimensions.width10,),
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Opacity(
                                        opacity:0.5,
                                        child: Container(
                                          height: 100,
                                          width: 200,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(Dimensions.radius15),
                                              color: AppColors.mainColor,
                                              image: const DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    "assets/images/img3.jpg"
                                                ),
                                              )
                                          ),
                                        ),
                                      ),
                                      Icon(Icons.play_circle_outline, color: Colors.white,size: Dimensions.iconSize16*2,),
                                    ],
                                  ),
                                  SizedBox(width: Dimensions.width10,),
                                ],
                              )
                          ),
                        ],
                      )
                    ],
                  )

              )
          )
        ],
      ),
      bottomNavigationBar: Container(
          height: Dimensions.height45*3.2,
          padding: EdgeInsets.only(
            top: Dimensions.height20,
            left: Dimensions.width20,
            right: Dimensions.width20,
          ),
          decoration: BoxDecoration(
              color: AppColors.buttomNavColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20*2),
                topRight: Radius.circular(Dimensions.radius20*2),
              )
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.access_time_rounded, color: AppColors.singColor,),
                      SmallText(text: "1 houre 20 minutes",size: 17,color: AppColors.mainBlackColor,),
                    ],
                  ),
                  SmallText(text: "5 Lessons",size: 17,color: AppColors.mainBlackColor,),
                ],
              ),
              SizedBox(height: Dimensions.height15,),
              Container(
                padding: EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10, top: Dimensions.height20,bottom: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.mainColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        BigText(text: "Start Learning", color: Colors.white,size: Dimensions.font20,),
                        SizedBox(width: Dimensions.width10,),
                        Icon(Icons.keyboard_double_arrow_right, color: Colors.white,size:Dimensions.iconSize24,),
                      ],
                    ),

                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}
