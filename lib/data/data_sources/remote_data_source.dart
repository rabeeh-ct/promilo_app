import 'package:get/get.dart';

import '../core/api_client.dart';
import '../core/api_constants.dart';
import '../models/app_version_model.dart';

abstract class RemoteDataSource {

  // Future<AppVersionModel> appVersionCheck(Map<String, dynamic> params);

  // Future<BookingManagementResponseModel> getMyBookings(
  //     Map<String, dynamic> params, {Map<String, dynamic>? queryParameters});



}

class RemoteDataSourceImpl implements RemoteDataSource {
  final ApiClient _apiClient = Get.find();

  // @override
  // Future<AppVersionModel> appVersionCheck(Map<String, dynamic> params) async {
  //   final response =
  //       await _apiClient.post(ApiConstants.appVersion, params: params);
  //   return AppVersionModel.fromJson(response);
  // }

  // @override
  // Future<BookingManagementResponseModel> getMyBookings(Map<String, dynamic> params, {Map<String, dynamic>? queryParameters}) async {
  //   final response = await _apiClient
  //       .getWithTokenHeader(ApiConstants.myBookings, params: params,queryParameters: queryParameters);
  //   return BookingManagementResponseModel.fromJson(response);
  // }
}
