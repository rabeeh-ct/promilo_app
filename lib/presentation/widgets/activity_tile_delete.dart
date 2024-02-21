// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:intl/intl.dart';
//
// import '../theme/theme.dart';
//
// class ActivityTile extends StatelessWidget {
//   const ActivityTile({Key? key, required this.activity, required this.dateTime})
//       : super(key: key);
//   final String activity;
//   final DateTime dateTime;
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               activity,
//               style: Theme.of(context)
//                   .textTheme
//                   .bodySmall
//                   ?.copyWith(fontWeight: FontWeight.w600, fontSize: 12.5),
//               textScaleFactor: 1.0,
//             ),
//             Text(
//               DateFormat("h:mm a").format(dateTime),
//               style: Theme.of(context)
//                   .textTheme
//                   .bodySmall
//                   ?.copyWith(fontWeight: FontWeight.w500, fontSize: 12.5,color: Colors.grey,height: 1.8),
//               textScaleFactor: 1.0,
//             ),
//           ],
//         ),
//         Container(
//           width: defaultPadding * 2,
//           height: defaultPadding * 2,
//           color: Get.isDarkMode ? darkGrey : lightGrey,
//         )
//       ],
//     );
//   }
// }
