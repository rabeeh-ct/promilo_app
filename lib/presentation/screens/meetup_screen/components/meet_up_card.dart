import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:promilo_app/presentation/routes/route_constants.dart';

import '../../../theme/theme.dart';

class MeetUpCard extends StatelessWidget {
  const MeetUpCard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(RouteList.descriptionScreen);
      },
      child: Container(
        width: 180,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage("assets/images/large-49-600x848.jpg"),fit: BoxFit.cover)
        ),
        child: Align(
          alignment: AlignmentDirectional.bottomEnd,
          child: CustomPaint(
            painter: HeartPainter(),
            size: Size(80, 80),
            child: SizedBox(
              width: 80,
              height: 80,
              child: Align(
                alignment: Alignment(0.5, 0.5),
                child: Text((index+1).toString().padLeft(2, '0'),style: Get.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w900,
                  fontSize: 50
                ),),
              ),
            ),
            // child: Container(
            //   width: 80,
            //   height: 80,
            //   decoration: const BoxDecoration(color: Colors.white),
            // ),
          ),
        ),
      ),
    );
  }
}

class HeartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint paint = Paint();
    paint
    ..strokeWidth = 2
      ..color = whiteColor
      ..style = PaintingStyle.fill;

    // Paint paint1 = Paint();
    // paint1
    //   ..color = Colors.red
    //   ..style = PaintingStyle.fill
    //   ..strokeWidth = 0;

    double width = size.width;
    double height = size.height;

    Path path = Path();
    path.moveTo(width, height);
    path.lineTo(width, 0);
    path.quadraticBezierTo(width, 10, width-10, 10);
    path.lineTo(20, 10);
    path.quadraticBezierTo(10, 10, 10, 20);
    // path.quadraticBezierTo(width, 10, 0, 0);
    path.lineTo(10, height-10);
    path.quadraticBezierTo(10, height, 0, height);
    // path.quadraticBezierTo(0, 0, 0, 0);
    // path.cubicTo(0.2 * width, height * 0.1, -0.25 * width, height * 0.6,
    //     0.5 * width, height);
    // path.moveTo(0.5 * width, height * 0.35);
    // path.cubicTo(0.8 * width, height * 0.1, 1.25 * width, height * 0.6,
    //     0.5 * width, height);

    // canvas.drawPath(path, paint1);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}