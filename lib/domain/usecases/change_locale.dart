
import 'package:dartz/dartz.dart';
import '/domain/usecases/usecase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../entities/app_error.dart';
import '../repository/user_preference_repository.dart';

class ChangeLocale extends UseCase<void, Locale> {
  final UserPreferencesRepository _userPreferencesRepository=Get.find();

  @override
  // ignore: avoid_renaming_method_parameters
  Future<Either<AppError, Unit>> call(Locale locale, {Map<String, dynamic>? queryParameters}) async {
    return await _userPreferencesRepository.changeLocale(locale);
  }
}
