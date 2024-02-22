import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:promilo_app/presentation/theme/theme.dart';
import 'package:promilo_app/presentation/widgets/default_button.dart';
import 'package:promilo_app/presentation/widgets/default_carousel_slider.dart';
import '../home_screen/home_screen.dart';
import 'meetup_screen_controller.dart';

class MeetUpScreen extends StatelessWidget {
  const MeetUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final MeetUpScreenController screenController = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text("Individual Meetup"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.mic_none_outlined)),
            ),
          ),
          20.sBH,
          DefaultCarouselSlider(
            items: [
              "assets/images/meeting_image_1.jpg",
              "assets/images/meeting_image_2.jpg"
            ],
            title: "title",
            subTitle: "subTitle",
          ),
          20.sBH,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text("Trending Popular People",style: Get.textTheme.bodyMedium?.copyWith(
              // color: secondaryColor,
              fontWeight: FontWeight.w600,

            ),),
          ),
          10.sBH,
          SizedBox(
            height: 180,
            width: double.maxFinite,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              separatorBuilder: (context, index) => 20.sBW,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                width: 280,
                decoration: BoxDecoration(
                  border: Border.all(color: blackColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(defaultPadding / 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: SvgPicture.asset("assets/icons/Leaf.svg"),
                        ),
                        10.sBW,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Author",
                              style: Get.textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                                // color: secondaryColor,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "1,028 Meetups",
                              style: Get.textTheme.bodyMedium?.copyWith(
                                  // fontWeight: FontWeight.bold,
                                  color: greyColor,
                                  fontSize: 11),
                            )
                          ],
                        ),
                      ],
                    ),
                    // 5.sBH,
                    const SizedBox(
                      width: double.maxFinite,
                      child: Divider(
                        // height: 2,
                        color: greyColor,
                      ),
                    ),
                    // 5.sBH,
                    SizedBox(
                      height: 50,
                      child: Stack(
                        children: [
                          ...List.generate(
                              screenController.authorImages.length,
                              (index) => Positioned(
                                  left: index * 35,
                                  child: CircleAvatar(
                                    radius: 25,
                                    foregroundImage: AssetImage(screenController.authorImages[index]),
                                  )))
                        ],
                      ),
                    ),
                    // 10.sBH,
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: SizedBox(
                        width: 90,
                        child: DefaultButton(
                          fontSize: 12,
                          borderRadius: 5,
                          height: 30,
                          text: "See more",
                          isLoading: false,
                          onPressed: () {},
                        ),
                      ),
                    )
                  ],
                ),
              ),
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
