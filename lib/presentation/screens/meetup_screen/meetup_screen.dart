import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:promilo_app/presentation/screens/meetup_screen/components/meet_up_card.dart';
import 'package:promilo_app/presentation/screens/meetup_screen/components/people_card.dart';
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
        title: const Text("Individual Meetup"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.mic_none_outlined)),
            ),
          ),
          20.sBH,
          DefaultCarouselSlider(
            pageController: PageController(),
            height: 220,
            items: [
              "assets/images/meeting_image_1.jpg",
              "assets/images/meeting_image_2.jpg",
              "assets/images/pexels-christina-morillo-1181396.jpg"
            ],
            title: "Popular Meetups",
            subTitle: "in India",
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
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              separatorBuilder: (context, index) => 20.sBW,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => const PeopleCard(),
              itemCount: 5,
            ),
          ),
          10.sBH,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Text("Top Trending Meetups",style: Get.textTheme.bodyMedium?.copyWith(
              // color: secondaryColor,
              fontWeight: FontWeight.w600,

            ),),
          ),
          10.sBH,
          SizedBox(
            height: 200,
            width: double.maxFinite,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              separatorBuilder: (context, index) => 20.sBW,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => MeetUpCard(index: index),
              itemCount: 5,
            ),
          ),

        ],
      ),
    );
  }
}
