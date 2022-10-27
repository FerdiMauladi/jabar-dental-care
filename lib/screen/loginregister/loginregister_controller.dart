import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jabardentalcare/base/base_controller.dart';
import 'package:jabardentalcare/model/login_model.dart';
import 'package:jabardentalcare/screen/bottomappbar/bottomappbar.dart';

class LoginRegisterController extends BaseController {
  bool loginView = true;
  bool registerView = false;
  bool isPasswordError = false;
  bool isError = false;
  bool isErrorEmailLogin = false;
  bool isErrorPasswordLogin = false;
  bool isErrorNamaRegister = false;
  bool isErrorEmailRegister = false;
  bool isErrorPasswordRegister = false;
  bool isErrorConfirmRegister = false;
  bool isObscurePasswordLogin = true;
  bool isObscurePasswordRegister = true;
  bool isObscureConfirmPasswordRegister = true;
  bool isRemember = false;
  bool isLoading = false;

  LoginModel? loginModel;

  final formKey = GlobalKey<FormState>();
  final formKeyRegister = GlobalKey<FormState>();

  final emailLoginController = TextEditingController();
  final passwordLoginController = TextEditingController();
  final namaRegisterController = TextEditingController();
  final emailRegisterController = TextEditingController();
  final passwordRegisterController = TextEditingController();
  final confirmPasswordRegisterController = TextEditingController();

  @override
  void dispose() {
    emailLoginController.dispose();
    passwordLoginController.dispose();
    namaRegisterController.dispose();
    emailRegisterController.dispose();
    passwordRegisterController.dispose();
    confirmPasswordRegisterController.dispose();
    super.dispose();
  }

  void postLogin(String email, String password) async {
    var dio = Dio();
    dio.options = BaseOptions(
      baseUrl:
      'http://1a9c-2001-448a-2022-f8f6-e22d-25cd-d5ab-6e8c.ngrok.io/api/v1',
    );
    try {
      var response = await dio.post(
        '/login',
        data: {
          'email': email,
          'password': password,
        },
        options: Options(
          headers: {
            'Accept': "application/json",
          },
        ),
      );
      if (response.statusCode == 200) {
          loginModel = LoginModel.fromJson(response.data);
          storageCore.saveAuthResponse(loginModel);
          isLoading = false;
          Get.offAll(() => const BottomAppBarWidget());
      }
      print(response.data);
    } on DioError catch (e) {
        isLoading = false;
        update();
      print(e);
    }
  }
}