// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
//
// import '../theme/theme.dart';
//
// class AccountSwitch extends StatelessWidget {
//   const AccountSwitch({
//     Key? key,
//     required this.value,
//     required this.title,
//     required this.function,
//     this.svgPath,
//   }) : super(key: key);
//
//   final bool value;
//   final String title;
//   final String? svgPath;
//   final Function function;
//
//   // final bool isParent;
//
//   @override
//   Widget build(BuildContext context) {
//     // final PrivacySettingsScreenController screenController = Get.find();
//     // bool isArabic = Get.locale?.languageCode == "ar";
//     // screenController.getData();
//     // accountEntity.isPrivate
//     //     ? screenController.animationController.forward()
//     //     : screenController.animationController.reverse();
//     // consoleLog(screenController.animationController.status);
//     return Padding(
//       padding: EdgeInsets.symmetric(
//         horizontal: defaultPadding,
//         vertical: svgPath == null ? defaultPadding / 5 : 0,
//       ),
//       child: Row(
//         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           svgPath != null
//               ? SizedBox(
//                   width: defaultPadding * 1.2,
//                   height: defaultPadding * 2.1,
//                   child: SvgPicture.asset(
//                     svgPath!,
//                     colorFilter: ColorFilter.mode(
//                       Get.textTheme.bodyMedium!.color!,
//                       BlendMode.srcIn,
//                     ),
//                     height: 20,
//                   ),
//                 )
//               : const SizedBox.shrink(),
//           if (svgPath != null) defaultSpacerHorizontal,
//           SizedBox(
//             // color: Colors.red,
//             // width: MediaQuery.of(context).size.width - 8.2 * defaultPadding,
//             child: Text(
//               title,
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//               style: Theme.of(context).textTheme.bodyMedium?.copyWith(
//                     fontSize: 13,
//                   ),
//               textScaleFactor: 1.0,
//             ),
//           ),
//           const Spacer(),
//           CupertinoSwitch(
//             value: value,
//             onChanged: (value) {
//               function();
//             },
//           )
//           // const Spacer(),
//           // TextButton(
//           //   style: const ButtonStyle(
//           //       shape: MaterialStatePropertyAll(OvalBorder(side: BorderSide.none)),
//           //       overlayColor: MaterialStatePropertyAll(Colors.white10)),
//           //   onPressed: () {
//           //     screenController.changeToPrivateAccount();
//           //     // category.status = !category.status;
//           //     // category.status
//           //     //     ? screenController.animationController.forward()
//           //     //     : screenController.animationController.reverse();
//           //     // screenController.categoryActive(
//           //     //     categoryId: category.id!, status: category.status);
//           //     // consoleLog("animation forward");
//           //   },
//           //   child: Obx(() {
//           //     return Container(
//           //       width: 58,
//           //       height: 20,
//           //       decoration: BoxDecoration(
//           //         color: Theme.of(context).scaffoldBackgroundColor,
//           //         borderRadius: BorderRadius.circular(30),
//           //         border: Border.all(color: greyColor),
//           //       ),
//           //       padding: const EdgeInsets.symmetric(horizontal: 4),
//           //       child: Stack(
//           //         alignment: Alignment.center,
//           //         children: [
//           //           Row(
//           //             mainAxisSize: MainAxisSize.max,
//           //             crossAxisAlignment: CrossAxisAlignment.center,
//           //             children: [
//           //               // !screenController.privateButtonLoading.value
//           //               //     ?
//           //               SizedBox(
//           //                 width: 13,
//           //                 height: 13,
//           //                 child: !screenController.privateButtonLoading.value
//           //                     ? Container(
//           //                         width: 13,
//           //                         height: 13,
//           //                         decoration: const BoxDecoration(
//           //                           color: primaryColor,
//           //                           shape: BoxShape.circle,
//           //                         ),
//           //                       )
//           //                     : const SizedBox(
//           //                         width: 13,
//           //                         height: 13,
//           //                         child: CupertinoActivityIndicator(),
//           //                       ),
//           //               )
//           //                   .animate(
//           //                       autoPlay: false,
//           //                       controller: screenController.animationController)
//           //                   .move(
//           //                       curve: Curves.easeInOut,
//           //                       duration: 300.ms,
//           //                       end:  Offset(isArabic?-35:35, 0)),
//           //             ],
//           //           ),
//           //         ],
//           //       ),
//           //     );
//           //   }),
//           // ),
//         ],
//       ),
//     );
//   }
// }
