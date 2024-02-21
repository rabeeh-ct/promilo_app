import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../domain/entities/app_error.dart';
import '../../../utils/snackbar_utils.dart';

class LoginScreenController extends GetxController {

  final TextEditingController emailNumberTextCtr= TextEditingController();
  final TextEditingController passwordTextCtr= TextEditingController();

  AppError? appError;
  RxBool buttonLoading = false.obs;

  login() async {
      buttonLoading(true);
    appError = null;
    // userEntity = await Get.find<AuthController>().getUser();
    // TokenParams tokenParams = TokenParams(token: userEntity!.token);
    // final response = await _getProductStockUseCase(tokenParams);
    // response.fold((l) {
    //   appError = l;
    //   return l.handleError();
    // }, (r) async {
    //   if (r.status == 1) {
    //     //data = r.data;
    //   } else {
    //     bool isArabic = Get.locale?.languageCode == "ar";
    //     showMessage(isArabic ? r.messageAr : r.messageEn);
    //   }
    // });
    buttonLoading(false);
  }
}
