import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:test_app/src/services/auth/auth_services.dart';
import 'package:test_app/src/services/auth/register_services.dart';

class SettingController extends GetxController {
  static SettingController get to => Get.find();
  final storage = const FlutterSecureStorage();

  RxInt count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    initFc();
  }

  void initFc() {
    count(27);
  }

  void test() {
    print('test');
  }

  logout() async {
    final accessToken = await storage.read(key: "accessToken");
    final refreshToken = await storage.read(key: "refreshToken");
    final refreshTokenExpirationTime =
        await storage.read(key: "refreshTokenExpirationTime");
    var dio = await AuthServices()
        .logoutDio(accessToken, refreshToken, refreshTokenExpirationTime);
    final response = await dio.post("/user/logout");
  }
}
