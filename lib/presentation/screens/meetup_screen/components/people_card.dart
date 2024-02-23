import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../theme/theme.dart';
import '../../../widgets/default_button.dart';
import '../meetup_screen_controller.dart';

class PeopleCard extends StatelessWidget {
  const PeopleCard({super.key});

  @override
  Widget build(BuildContext context) {
    final MeetUpScreenController screenController = Get.find();
    return Container(
      width: 280,
      decoration: BoxDecoration(
        border: Border.all(color: blackColor),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(defaultPadding / 2),
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
    );
  }
}
