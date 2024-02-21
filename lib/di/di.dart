import 'package:get/get.dart';

import '../data/core/api_client.dart';
import '../data/data_sources/remote_data_source.dart';
import '../data/repository/data_repository_impl.dart';
import '../domain/repository/data_repository.dart';
import '../domain/usecases/change_locale.dart';
import '../domain/usecases/theme_mode_save_usecase.dart';
import '../presentation/screens/home_screen/home_screen_controller.dart';
import '../presentation/screens/login_screen/login_screen_controller.dart';

class DependencyInjection {
  static init() {
    Get.lazyPut(() => HomeScreenController(), fenix: true);
    Get.lazyPut(() => ApiClient(), fenix: true);
    // Get.lazyPut<AuthenticationRepository>(() => AuthenticationRepositoryImpl(), fenix: true);
    // Get.lazyPut<AuthenticationRemoteDataSource>(() => AuthenticationRemoteDataSourceImpl(),
    //     fenix: true);
    // Get.lazyPut<AuthenticationLocalDataSource>(() => AuthenticationLocalDataSourceImpl(),
    //     fenix: true);
    Get.lazyPut<DataRepository>(() => DataRepositoryImpl(), fenix: true);
    Get.lazyPut<RemoteDataSource>(() => RemoteDataSourceImpl(), fenix: true);
    Get.lazyPut(() => ThemeModeSaveUseCase(), fenix: true);
    // Get.lazyPut<LocalDataSource>(() => LocalDataSourceImpl(), fenix: true);
    // Get.lazyPut<UserPreferencesRepository>(() => UserPreferenceRepositoryImpl(), fenix: true);
    // Get.lazyPut<UserPreferenceLocalDataSource>(() => UserPreferenceLocalDataSourceImpl(),
    //     fenix: true);
    Get.lazyPut(() => ChangeLocale(), fenix: true);
    Get.lazyPut(() => LoginScreenController(), fenix: true);

  }
}
