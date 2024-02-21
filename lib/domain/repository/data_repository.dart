import 'package:dartz/dartz.dart';

import '../entities/app_error.dart';
import '../entities/app_version_entity.dart';
import '../entities/theme_entity.dart';

abstract class DataRepository {

  // Future<Either<AppError, AppVersionEntity>> appVersionCheck(
  //     Map<String, dynamic> params);

  Future<Either<AppError, void>> themeModeSave(Map<String, dynamic> params);

  Future<Either<AppError, ThemeEntity?>> getThemeMode();

  Future<Either<AppError, void>> saveLocationLocal(Map<String, dynamic> params);

}
