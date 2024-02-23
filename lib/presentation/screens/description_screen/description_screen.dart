import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promilo_app/presentation/screens/description_screen/components/image_slider.dart';
import 'package:promilo_app/presentation/theme/theme.dart';
import 'package:share_plus/share_plus.dart';
import '../../widgets/default_carousel_slider.dart';
import 'description_screen_controller.dart';

class DescriptionScreen extends StatelessWidget {
  const DescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final DescriptionScreenController screenController = Get.find();
    return Scaffold(
      appBar: AppBar(title: const Text("Description")),
      body: ListView(
        padding: const EdgeInsets.all(defaultPadding),
        children: [
          Container(
            height: 430,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                ImageSlider(
                  height: 380,
                  items: screenController.dummyData.images,
                  pageController: PageController(),
                ),
                // Container(
                //   width: double.maxFinite,
                //   height: 380,
                //   color: Colors.red,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.save_alt,
                        color: Colors.grey[700],
                      ),
                      constraints: const BoxConstraints(),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.bookmark_border,
                        color: Colors.grey[700],
                      ),
                      constraints: const BoxConstraints(),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_outline,
                        color: Colors.grey[700],
                      ),
                      constraints: const BoxConstraints(),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.fullscreen,
                        color: Colors.grey[700],
                      ),
                      constraints: const BoxConstraints(),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.star_border,
                        color: Colors.grey[700],
                      ),
                      constraints: const BoxConstraints(),
                    ),
                    IconButton(
                      onPressed: () {
                        Share.share(
                            'check out my GitHub https://github.com/rabeeh-ct', subject: 'Look what I made!'
                        );
                      },
                      icon: Icon(
                        Icons.share,
                        color: Colors.grey[700],
                      ),
                      constraints: const BoxConstraints(),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // const DefaultCarouselSlider(
          //   items: [
          //     "assets/images/meeting_image_1.jpg",
          //     "assets/images/meeting_image_2.jpg",
          //     "assets/images/pexels-christina-morillo-1181396.jpg"
          //   ],
          //   title: "title",
          //   subTitle: "subTitle",
          // ),
          20.sBH,
          Row(
            children: [
              const Icon(
                Icons.bookmark_border,
                color: secondaryColor,
                size: 20,
              ),
              10.sBW,
              Text(screenController.dummyData.saveCount.toString()),
              10.sBW,
              const Icon(Icons.favorite_outline,
                  color: secondaryColor, size: 20),
              10.sBW,
              Text(screenController.dummyData.likeCount.toString()),
              10.sBW,
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                // height: 30,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ...List.generate(
                      5,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Icon(
                          Icons.star_rate_rounded,
                          color: index < 3
                              ? primaryColor
                              : index == 3
                                  ? primaryColor.withOpacity(0.2)
                                  : whiteColor,
                          size: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              10.sBW,
              Text(
                screenController.dummyData.rating.toString(),
                style:
                    Get.textTheme.bodyMedium?.copyWith(color: secondaryColor),
              ),
            ],
          ),
          20.sBH,
          Text(
            "Actor Name",
            style: Get.textTheme.bodyMedium
                ?.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          5.sBH,
          Text(screenController.dummyData.actorName,
              style: Get.textTheme.bodyMedium?.copyWith(color: greyColor)),
          5.sBH,
          Row(
            children: [
              const Icon(
                Icons.schedule,
                size: 18,
                color: greyColor,
              ),
              5.sBW,
              Text(
                "Duration",
                style: Get.textTheme.bodyMedium?.copyWith(color: greyColor),
              ),
              5.sBW,
              Text(
                screenController.dummyData.durationIinMinutes.toString(),
                style: Get.textTheme.bodyMedium?.copyWith(color: greyColor),
              ),
              5.sBW,
              Text(
                "Mins",
                style: Get.textTheme.bodyMedium?.copyWith(color: greyColor),
              ),
            ],
          ),
          5.sBH,
          Row(
            children: [
              const Icon(
                Icons.account_balance_wallet_outlined,
                size: 18,
                color: greyColor,
              ),
              5.sBW,
              Text(
                "Total Average Fees ₹${screenController.dummyData.avgFee}",
                style: Get.textTheme.bodyMedium?.copyWith(color: greyColor),
              ),
              // 5.sBW,
              // Text(
              //   "",
              //   style: Get.textTheme.bodyMedium?.copyWith(color: greyColor),
              // ),
              // 5.sBW,
              // Text(
              //   "Mins",
              //   style: Get.textTheme.bodyMedium?.copyWith(color: greyColor),
              // ),
            ],
          ),
          10.sBH,
          Text(
            "About",
            style: Get.textTheme.bodyMedium
                ?.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          5.sBH,
          Text(screenController.dummyData.about,
              style: Get.textTheme.bodyMedium?.copyWith(color: greyColor)),
        ],
      ),
    );
  }
}
