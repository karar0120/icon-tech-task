import 'package:icon_tech_task/core/helper/shared_preferences.dart';
import 'package:icon_tech_task/core/networking/api_error_handler.dart';
import 'package:icon_tech_task/core/networking/api_result.dart';
import 'package:icon_tech_task/core/networking/api_service.dart';
import 'package:icon_tech_task/features/login/data/models/login_request_body.dart';
import 'package:icon_tech_task/features/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService _apiService;
  final AppPreferences _appPreferences;
  LoginRepo(this._apiService, this._appPreferences);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      _appPreferences.setAccessToken(accessToken: response.userDate!.token!);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
