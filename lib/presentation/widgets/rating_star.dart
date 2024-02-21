// // ignore_for_file: unnecessary_null_comparison
//
// import 'package:flutter/material.dart';
//
// import '../theme/theme.dart';
//
// typedef RatingChangeCallback = void Function(double rating);
//
// class StarRating extends StatelessWidget {
//   final int starCount;
//   final double rating;
//   final RatingChangeCallback onRatingChanged;
//   final Color color;
//
//   const StarRating(
//       {Key? key,
//       this.starCount = 5,
//       this.rating = .0,
//       required this.onRatingChanged,
//       this.color = primaryColor})
//       : super(key: key);
//
//   Widget buildStar(BuildContext context, int index) {
//     Icon icon;
//     if (index >= rating) {
//       icon = const Icon(
//         Icons.star_border,
//         color: primaryColor,
//       );
//     } else if (index > rating - 1 && index < rating) {
//       icon = Icon(
//         Icons.star_half,
//         color: color,
//       );
//     } else {
//       icon = Icon(
//         Icons.star,
//         color: color,
//       );
//     }
//     return InkResponse(
//       onTap:
//           onRatingChanged == null ? null : () => onRatingChanged(index + 1.0),
//       child: icon,
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//         children:
//             List.generate(starCount, (index) => buildStar(context, index)));
//   }
// }
