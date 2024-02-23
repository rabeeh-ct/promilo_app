import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../theme/theme.dart';
import '../../widgets/default_button.dart';
import '../../../utils/validators.dart';
import '../../routes/route_constants.dart';
import 'login_screen_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginScreenController screenController = Get.find();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("promilo"),
        shape: InputBorder.none,
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Hi, Welcome Back!",
                style: Get.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            40.sBH,
            Text(
              "   Please Sign in to continue",
              style: Get.textTheme.bodyMedium?.copyWith(
                fontSize: 17,
              ),
            ),
            5.sBH,
            TextFormField(
              controller: screenController.emailNumberTextCtr,
              decoration:
                  const InputDecoration(hintText: "Enter Email or Mob No."),
              validator: emailValidator,
            ),
            5.sBH,
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Text(
                "Sign In With OTP",
                style: Get.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: secondaryColor,
                  fontSize: 17,
                ),
              ),
            ),
            5.sBH,
            Text(
              "   Password",
              style: Get.textTheme.bodyMedium?.copyWith(
                fontSize: 17,
              ),
            ),
            5.sBH,
            TextFormField(
              controller: screenController.passwordTextCtr,
              decoration: const InputDecoration(hintText: "Enter Password"),
              validator: requiredValidator,
            ),
            5.sBH,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CheckboxListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Transform.translate(
                      offset: const Offset(-20, 0),
                      child: Text(
                        "Remember Me",
                        style: Get.textTheme.bodyMedium?.copyWith(
                          color: greyColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                    value: false,
                    onChanged: (value) {},
                  ),
                ),
                Text(
                  "Forgot Password",
                  style: Get.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: secondaryColor,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            5.sBH,
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     disabledForegroundColor:Colors.blue
            //   ),
            //   onPressed: () {},
            //   child: Text(
            //     "Submit",
            //     // textScaleFactor: 1.0,
            //     style: Theme.of(context).textTheme.titleMedium?.copyWith(
            //         // color: textColor,
            //         fontWeight: FontWeight.w600,
            //         fontSize: 16),
            //   ),
            // ),
            DefaultButton(
              text: "Submit",
              isLoading: false,
              onPressed: () {
                Get.toNamed(RouteList.navigationScreen);
              },
            ),
            10.sBH,
            Row(
              children: [
                Expanded(
                  child: Divider(
                    color: greyColor.withOpacity(0.5),
                    endIndent: 5,
                  ),
                ),
                const Text("or"),
                Expanded(
                  child: Divider(
                    color: greyColor.withOpacity(0.5),
                    indent: 5,
                  ),
                ),
              ],
            ),
            20.sBH,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                30.sBW,
                SvgPicture.asset("assets/icons/icons8-google-logo.svg"),
                SvgPicture.asset("assets/icons/icons8-linkedin-logo.svg"),
                SvgPicture.asset("assets/icons/icons8-facebook.svg"),
                SvgPicture.asset("assets/icons/icons8-instagram.svg"),
                SvgPicture.asset(
                  "assets/icons/whatsapp_logo_icon.svg",
                  height: 36,
                  width: 36,
                ),
                30.sBW,
              ],
            ),
            20.sBH,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Business User?",
                  style: Get.textTheme.bodyMedium
                      ?.copyWith(fontSize: 17, color: greyColor),
                ),
                Text(
                  "Don't have an account",
                  style: Get.textTheme.bodyMedium
                      ?.copyWith(fontSize: 17, color: greyColor),
                ),
              ],
            ),
            10.sBH,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Login Here",
                  style: Get.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: secondaryColor,
                    fontSize: 17,
                  ),
                ),
                Text(
                  "Sign Up",
                  style: Get.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: secondaryColor,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            10.sBH,
            Center(
              child: Text(
                "By continuing, you agree to",
                style: Get.textTheme.bodyMedium?.copyWith(color: greyColor),
              ),
            ),
            Center(
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "Promilo's ",
                  style: Get.textTheme.bodyMedium?.copyWith(color: greyColor),
                ),
                TextSpan(
                  text: "Terms of Use & Privacy Policy.",
                  style: Get.textTheme.bodyMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ])),
            ),
            10.sBH,
          ],
        ),
      ),
    );
  }
}
