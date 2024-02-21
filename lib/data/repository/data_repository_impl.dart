import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/exceptions/exceptions.dart';

import '../../domain/entities/app_error.dart';
import '../../domain/entities/app_version_entity.dart';
import '../../domain/entities/theme_entity.dart';
import '../../domain/repository/data_repository.dart';
import '../../utils/debug_utils.dart';
import '../data_sources/remote_data_source.dart';

class DataRepositoryImpl implements DataRepository {
  RemoteDataSource remoteDataSource = Get.find();

  @override
  Future<Either<AppError, ThemeEntity?>> getThemeMode() {
    // TODO: implement getThemeMode
    throw UnimplementedError();
  }

  @override
  Future<Either<AppError, void>> saveLocationLocal(Map<String, dynamic> params) {
    // TODO: implement saveLocationLocal
    throw UnimplementedError();
  }

  @override
  Future<Either<AppError, void>> themeModeSave(Map<String, dynamic> params) {
    // TODO: implement themeModeSave
    throw UnimplementedError();
  }
  // LocalDataSource localDataSource = Get.find();

  // @override
  // Future<Either<AppError, AppVersionEntity>> appVersionCheck(
  //     Map<String, dynamic> params) async {
  //   try {
  //     final response = await remoteDataSource.appVersionCheck(params);
  //     return Right(response);
  //   } on UnauthorizedException {
  //     return Left(AppError(AppErrorType.unauthorised));
  //   } on SocketException {
  //     return Left(AppError(AppErrorType.network));
  //   } on Exception {
  //     return Left(AppError(AppErrorType.api));
  //   }
  // }

}
