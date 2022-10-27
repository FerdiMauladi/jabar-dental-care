import 'package:flutter/material.dart';
import 'package:jabardentalcare/screen/bottomappbar/bottomappbar.dart';
import 'package:get/get.dart';
import 'package:jabardentalcare/screen/loginregister/loginregister_controller.dart';

class LoginRegisterScreen extends StatelessWidget {
  const LoginRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = Get.width;
    var height = Get.height;
    return GetBuilder<LoginRegisterController>(
      init: LoginRegisterController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Container(
                  height: height * 0.25,
                  width: width * 0.85,
                  margin: const EdgeInsets.only(top: 50.0),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/login.png'),
                    ),
                  ),
                ),
                AnimatedContainer(
                  curve: Curves.easeIn,
                  duration: const Duration(milliseconds: 800),
                  height: controller.loginView
                      ? controller.isErrorEmailLogin ||
                              controller.isErrorPasswordLogin
                          ? controller.isErrorEmailLogin &&
                                  controller.isErrorPasswordLogin
                              ? height * 0.53
                              : height * 0.51
                          : height * 0.48
                      : controller.isErrorNamaRegister ||
                              controller.isErrorEmailRegister ||
                              controller.isErrorPasswordRegister ||
                              controller.isErrorConfirmRegister
                          ? controller.isErrorNamaRegister &&
                                      controller.isErrorEmailRegister ||
                                  controller.isErrorPasswordRegister ||
                                  controller.isErrorConfirmRegister
                              ? controller.isErrorNamaRegister &&
                                          controller.isErrorEmailRegister &&
                                          controller.isErrorPasswordRegister ||
                                      controller.isErrorConfirmRegister
                                  ? controller.isErrorNamaRegister &&
                                          controller.isErrorEmailRegister &&
                                          controller.isErrorPasswordRegister &&
                                          controller.isErrorConfirmRegister
                                      ? height * 0.78
                                      : height * 0.76
                                  : height * 0.74
                              : height * 0.72
                          : height * 0.69,
                  width: width,
                  margin: const EdgeInsets.only(top: 50.0),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: controller.loginView
                            ? controller.isErrorEmailLogin ||
                                    controller.isErrorPasswordLogin
                                ? controller.isErrorEmailLogin &&
                                        controller.isErrorPasswordLogin
                                    ? height * 0.53
                                    : height * 0.51
                                : height * 0.48
                            : controller.isErrorNamaRegister ||
                                    controller.isErrorEmailRegister ||
                                    controller.isErrorPasswordRegister ||
                                    controller.isErrorConfirmRegister
                                ? controller.isErrorNamaRegister &&
                                            controller.isErrorEmailRegister ||
                                        controller.isErrorPasswordRegister ||
                                        controller.isErrorConfirmRegister
                                    ? controller.isErrorNamaRegister &&
                                                controller
                                                    .isErrorEmailRegister &&
                                                controller
                                                    .isErrorPasswordRegister ||
                                            controller.isErrorConfirmRegister
                                        ? controller.isErrorNamaRegister &&
                                                controller
                                                    .isErrorEmailRegister &&
                                                controller
                                                    .isErrorPasswordRegister &&
                                                controller
                                                    .isErrorConfirmRegister
                                            ? height * 0.78
                                            : height * 0.76
                                        : height * 0.74
                                    : height * 0.72
                                : height * 0.69,
                        width: width,
                      ),
                      AnimatedContainer(
                        curve: Curves.easeIn,
                        duration: const Duration(milliseconds: 800),
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(
                          left: 25.0,
                          right: 25.0,
                        ),
                        padding: const EdgeInsets.all(8.0),
                        height: controller.loginView
                            ? controller.isErrorEmailLogin ||
                                    controller.isErrorPasswordLogin
                                ? controller.isErrorEmailLogin &&
                                        controller.isErrorPasswordLogin
                                    ? height * 0.49
                                    : height * 0.47
                                : height * 0.44
                            : controller.isErrorNamaRegister ||
                                    controller.isErrorEmailRegister ||
                                    controller.isErrorPasswordRegister ||
                                    controller.isErrorConfirmRegister
                                ? controller.isErrorNamaRegister &&
                                            controller.isErrorEmailRegister ||
                                        controller.isErrorPasswordRegister ||
                                        controller.isErrorConfirmRegister
                                    ? controller.isErrorNamaRegister &&
                                                controller
                                                    .isErrorEmailRegister &&
                                                controller
                                                    .isErrorPasswordRegister ||
                                            controller.isErrorConfirmRegister
                                        ? controller.isErrorNamaRegister &&
                                                controller
                                                    .isErrorEmailRegister &&
                                                controller
                                                    .isErrorPasswordRegister &&
                                                controller
                                                    .isErrorConfirmRegister
                                            ? height * 0.708
                                            : height * 0.688
                                        : height * 0.668
                                    : height * 0.648
                                : height * 0.618,
                        width: width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              blurRadius: 4,
                              offset: const Offset(4, 8), // Shadow position
                            ),
                          ],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: SingleChildScrollView(
                          physics: const NeverScrollableScrollPhysics(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      controller.loginView = true;
                                      controller.registerView = false;
                                      controller.isErrorNamaRegister = false;
                                      controller.isErrorEmailRegister = false;
                                      controller.isErrorPasswordRegister =
                                          false;
                                      controller.isErrorConfirmRegister = false;
                                      controller.emailLoginController.clear();
                                      controller.passwordLoginController
                                          .clear();
                                      controller.update();
                                    },
                                    child: AnimatedContainer(
                                      curve: Curves.easeIn,
                                      duration:
                                          const Duration(milliseconds: 500),
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.all(8.0),
                                      width: width * 0.3,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color: controller.loginView
                                                ? const Color(0xFF1166E4)
                                                : Colors.transparent,
                                            width: 4,
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        'Login',
                                        style: TextStyle(
                                          fontSize: 24,
                                          color: controller.loginView
                                              ? const Color(0xFF1166E4)
                                              : Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      controller.loginView = false;
                                      controller.registerView = true;
                                      controller.isErrorEmailLogin = false;
                                      controller.isErrorPasswordLogin = false;
                                      controller.emailRegisterController
                                          .clear();
                                      controller.namaRegisterController.clear();
                                      controller.passwordRegisterController
                                          .clear();
                                      controller
                                          .confirmPasswordRegisterController
                                          .clear();
                                      controller.update();
                                    },
                                    child: AnimatedContainer(
                                      curve: Curves.easeOut,
                                      duration:
                                          const Duration(milliseconds: 500),
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.all(8.0),
                                      width: width * 0.3,
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color: controller.registerView
                                                ? const Color(0xFF1166E4)
                                                : Colors.transparent,
                                            width: 4,
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        'Register',
                                        style: TextStyle(
                                          fontSize: 24,
                                          color: controller.registerView
                                              ? const Color(0xFF1166E4)
                                              : Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              if (controller.loginView)
                                Container(
                                  padding: const EdgeInsets.all(16.0),
                                  margin: const EdgeInsets.only(top: 25),
                                  child: Form(
                                    key: controller.formKey,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Email',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(top: 10),
                                          child: TextFormField(
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            cursorColor: Colors.black,
                                            autovalidateMode: AutovalidateMode
                                                .onUserInteraction,
                                            controller:
                                                controller.emailLoginController,
                                            onChanged: (email) {
                                              if (email.isEmpty) {
                                                controller.isErrorEmailLogin =
                                                    true;
                                                controller.update();
                                              } else if (!RegExp(
                                                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                                                  .hasMatch(email)) {
                                                controller.isErrorEmailLogin =
                                                    true;
                                                controller.update();
                                              } else {
                                                controller.isErrorEmailLogin =
                                                    false;
                                                controller.update();
                                              }
                                            },
                                            validator: (email) {
                                              if (email == null ||
                                                  email.isEmpty) {
                                                return 'Email cannot be empty';
                                              } else if (!RegExp(
                                                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                                                  .hasMatch(email)) {
                                                return 'Enter email correctly';
                                              } else {
                                                return null;
                                              }
                                            },
                                            decoration: InputDecoration(
                                              hintText: 'Masukan Email Anda',
                                              filled: true,
                                              fillColor: Colors.white,
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  10,
                                                ),
                                                borderSide: const BorderSide(
                                                  color: Colors.black,
                                                  width: 1,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  10,
                                                ),
                                                borderSide: const BorderSide(
                                                  color: Colors.black,
                                                  width: 5,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  10,
                                                ),
                                                borderSide: const BorderSide(
                                                  color: Colors.red,
                                                  width: 1,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  10,
                                                ),
                                                borderSide: const BorderSide(
                                                  color: Colors.black,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(top: 20),
                                          child: const Text(
                                            'Password',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(top: 10),
                                          child: TextFormField(
                                            obscureText: controller
                                                .isObscurePasswordLogin,
                                            cursorColor: Colors.black,
                                            autovalidateMode: AutovalidateMode
                                                .onUserInteraction,
                                            controller: controller
                                                .passwordLoginController,
                                            onChanged: (password) {
                                              if (password.isEmpty) {
                                                controller
                                                        .isErrorPasswordLogin =
                                                    true;
                                                controller.update();
                                              } else {
                                                controller
                                                        .isErrorPasswordLogin =
                                                    false;
                                                controller.update();
                                              }
                                            },
                                            validator: (password) {
                                              if (password == null ||
                                                  password.isEmpty) {
                                                return 'Password cannot be empty';
                                              } else {
                                                return null;
                                              }
                                            },
                                            decoration: InputDecoration(
                                              hintText: 'Masukan Password Anda',
                                              filled: true,
                                              errorText: controller.isError
                                                  ? 'Incorrect Password'
                                                  : null,
                                              fillColor: Colors.white,
                                              suffixIcon: GestureDetector(
                                                onTap: () {
                                                  controller
                                                          .isObscurePasswordLogin =
                                                      controller
                                                          .isObscurePasswordLogin;
                                                  controller.update();
                                                },
                                                child: Icon(
                                                  controller
                                                          .isObscurePasswordLogin
                                                      ? Icons.visibility_off
                                                      : Icons.visibility,
                                                  color: controller
                                                          .isErrorPasswordLogin
                                                      ? Colors.red
                                                      : Colors.black,
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  10,
                                                ),
                                                borderSide: const BorderSide(
                                                  color: Colors.black,
                                                  width: 1,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  10,
                                                ),
                                                borderSide: const BorderSide(
                                                  color: Colors.black,
                                                  width: 5,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  10,
                                                ),
                                                borderSide: const BorderSide(
                                                  color: Colors.red,
                                                  width: 1,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  10,
                                                ),
                                                borderSide: const BorderSide(
                                                  color: Colors.black,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(top: 12.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  controller.isRemember =
                                                      !controller.isRemember;
                                                  controller.update();
                                                },
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Checkbox(
                                                      value:
                                                          controller.isRemember,
                                                      onChanged: (bool? data) {
                                                        controller.isRemember =
                                                            data!;
                                                      },
                                                    ),
                                                    const Text(
                                                      'Ingat Saya',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Spacer(),
                                              GestureDetector(
                                                onTap: () {},
                                                child: const Text(
                                                  'Lupa Password ?',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xFF660066),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              if (!controller.loginView)
                                Container(
                                  padding: const EdgeInsets.all(16.0),
                                  margin: const EdgeInsets.only(top: 25),
                                  child: Form(
                                    key: controller.formKeyRegister,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Nama',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(top: 10),
                                          child: TextFormField(
                                            cursorColor: Colors.black,
                                            controller: controller
                                                .namaRegisterController,
                                            autovalidateMode: AutovalidateMode
                                                .onUserInteraction,
                                            onChanged: (nama) {
                                              if (nama.isEmpty) {
                                                controller.isErrorNamaRegister =
                                                    true;
                                                controller.update();
                                              } else {
                                                controller.isErrorNamaRegister =
                                                    false;
                                                controller.update();
                                              }
                                            },
                                            validator: (name) {
                                              if (name == null ||
                                                  name.isEmpty) {
                                                return 'Name cannot be empty';
                                              } else {
                                                return null;
                                              }
                                            },
                                            decoration: InputDecoration(
                                              hintText:
                                                  'Masukan Nama Lengkap Anda',
                                              filled: true,
                                              fillColor: Colors.white,
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  10,
                                                ),
                                                borderSide: const BorderSide(
                                                  color: Colors.black,
                                                  width: 1,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  10,
                                                ),
                                                borderSide: const BorderSide(
                                                  color: Colors.red,
                                                  width: 1,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  10,
                                                ),
                                                borderSide: const BorderSide(
                                                  color: Colors.black,
                                                  width: 5,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  10,
                                                ),
                                                borderSide: const BorderSide(
                                                  color: Colors.black,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(top: 10),
                                          child: const Text(
                                            'Email',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(top: 10),
                                          child: TextFormField(
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            cursorColor: Colors.black,
                                            autovalidateMode: AutovalidateMode
                                                .onUserInteraction,
                                            controller: controller
                                                .emailRegisterController,
                                            onChanged: (email) {
                                              if (email.isEmpty) {
                                                controller
                                                        .isErrorEmailRegister =
                                                    true;
                                                controller.update();
                                              } else if (!RegExp(
                                                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                                                  .hasMatch(email)) {
                                                controller
                                                        .isErrorEmailRegister =
                                                    true;
                                                controller.update();
                                              } else {
                                                controller
                                                        .isErrorEmailRegister =
                                                    false;
                                                controller.update();
                                              }
                                            },
                                            validator: (email) {
                                              if (email == null ||
                                                  email.isEmpty) {
                                                return 'Email cannot be empty';
                                              } else if (!RegExp(
                                                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                                                  .hasMatch(email)) {
                                                return 'Enter email correctly';
                                              } else {
                                                return null;
                                              }
                                            },
                                            decoration: InputDecoration(
                                              hintText: 'Masukan Email Anda',
                                              filled: true,
                                              fillColor: Colors.white,
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  10,
                                                ),
                                                borderSide: const BorderSide(
                                                  color: Colors.black,
                                                  width: 5,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  10,
                                                ),
                                                borderSide: const BorderSide(
                                                  color: Colors.red,
                                                  width: 1,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  10,
                                                ),
                                                borderSide: const BorderSide(
                                                  color: Colors.black,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(top: 20),
                                          child: const Text(
                                            'Password',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(top: 10),
                                          child: TextFormField(
                                            obscureText: controller
                                                .isObscurePasswordRegister,
                                            cursorColor: Colors.black,
                                            autovalidateMode: AutovalidateMode
                                                .onUserInteraction,
                                            controller: controller
                                                .passwordRegisterController,
                                            onChanged: (password) {
                                              if (password.isEmpty) {
                                                controller
                                                        .isErrorPasswordRegister =
                                                    true;
                                                controller.update();
                                              } else {
                                                controller
                                                        .isErrorPasswordRegister =
                                                    false;
                                                controller.update();
                                              }
                                            },
                                            validator: (password) {
                                              if (password == null ||
                                                  password.isEmpty) {
                                                return 'Password cannot be empty';
                                              } else {
                                                return null;
                                              }
                                            },
                                            decoration: InputDecoration(
                                              hintText: 'Masukan Password Anda',
                                              filled: true,
                                              fillColor: Colors.white,
                                              // errorText: 'Password Salah',
                                              suffixIcon: GestureDetector(
                                                onTap: () {
                                                  controller
                                                          .isObscurePasswordRegister =
                                                      !controller
                                                          .isObscurePasswordRegister;
                                                  controller.update();
                                                },
                                                child: Icon(
                                                  controller
                                                          .isObscurePasswordRegister
                                                      ? Icons.visibility_off
                                                      : Icons.visibility,
                                                  color: controller
                                                          .isErrorPasswordRegister
                                                      ? Colors.red
                                                      : Colors.black,
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  10,
                                                ),
                                                borderSide: const BorderSide(
                                                  color: Colors.black,
                                                  width: 1,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  10,
                                                ),
                                                borderSide: const BorderSide(
                                                  color: Colors.black,
                                                  width: 5,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  10,
                                                ),
                                                borderSide: const BorderSide(
                                                  color: Colors.red,
                                                  width: 1,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  10,
                                                ),
                                                borderSide: const BorderSide(
                                                  color: Colors.black,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              const EdgeInsets.only(top: 20),
                                          child: const Text(
                                            'Confirm Password',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                            top: 10,
                                            bottom: 20,
                                          ),
                                          child: TextFormField(
                                            obscureText: controller
                                                .isObscureConfirmPasswordRegister,
                                            cursorColor: Colors.black,
                                            autovalidateMode: AutovalidateMode
                                                .onUserInteraction,
                                            controller: controller
                                                .confirmPasswordRegisterController,
                                            onChanged: (confirmPassword) {
                                              if (confirmPassword.isEmpty) {
                                                controller
                                                        .isErrorConfirmRegister =
                                                    true;
                                                controller.update();
                                              } else if (confirmPassword !=
                                                  controller
                                                      .passwordRegisterController
                                                      .text) {
                                                controller
                                                        .isErrorConfirmRegister =
                                                    true;
                                                controller.update();
                                              } else {
                                                controller
                                                        .isErrorConfirmRegister =
                                                    false;
                                                controller.update();
                                              }
                                            },
                                            validator: (confirmPassword) {
                                              if (confirmPassword == null ||
                                                  confirmPassword.isEmpty) {
                                                return 'Confirm password tidak boleh kosong';
                                              } else if (confirmPassword !=
                                                  controller
                                                      .passwordRegisterController
                                                      .text) {
                                                return 'Password tidak sama';
                                              } else {
                                                return null;
                                              }
                                            },
                                            decoration: InputDecoration(
                                              hintText:
                                                  'Masukan password sekali lagi',
                                              filled: true,
                                              fillColor: Colors.white,
                                              // errorText: 'Password Salah',
                                              suffixIcon: GestureDetector(
                                                onTap: () {
                                                  controller
                                                          .isObscureConfirmPasswordRegister =
                                                      !controller
                                                          .isObscureConfirmPasswordRegister;
                                                  controller.update();
                                                },
                                                child: Icon(
                                                  controller
                                                          .isObscureConfirmPasswordRegister
                                                      ? Icons.visibility_off
                                                      : Icons.visibility,
                                                  color: controller
                                                          .isErrorConfirmRegister
                                                      ? Colors.red
                                                      : Colors.black,
                                                ),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  10,
                                                ),
                                                borderSide: const BorderSide(
                                                  color: Colors.red,
                                                  width: 1,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  10,
                                                ),
                                                borderSide: const BorderSide(
                                                  color: Colors.black,
                                                  width: 5,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  10,
                                                ),
                                                borderSide: const BorderSide(
                                                  color: Colors.black,
                                                  width: 1,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  10,
                                                ),
                                                borderSide: const BorderSide(
                                                  color: Colors.black,
                                                  style: BorderStyle.solid,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      AnimatedPositioned(
                        curve: Curves.easeIn,
                        duration: const Duration(seconds: 1),
                        bottom: controller.loginView ? 10 : 40,
                        left: 0,
                        right: 0,
                        child: Container(
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF0C3DF3),
                              textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              elevation: 2,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8.0),
                                ),
                              ),
                            ),
                            onPressed: () {
                              if (controller.loginView) {
                                final form = controller.formKey.currentState;
                                if (form!.validate()) {
                                  // postLogin(_emailLoginController.text,
                                  //     _passwordLoginController.text);
                                  Get.offAll(() => const BottomAppBarWidget());
                                } else {
                                  if (controller
                                      .emailLoginController.text.isEmpty) {
                                    controller.isErrorEmailLogin = true;
                                    controller.update();
                                  } else if (!RegExp(
                                          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                                      .hasMatch(controller
                                          .emailLoginController.text)) {
                                    controller.isErrorEmailLogin = true;
                                    controller.update();
                                  } else {
                                    if (controller
                                        .passwordLoginController.text.isEmpty) {
                                      controller.isErrorPasswordLogin = true;
                                      controller.update();
                                    } else {
                                      controller.isErrorEmailLogin = false;
                                      controller.isErrorPasswordLogin = false;
                                      controller.update();
                                    }
                                  }
                                }
                              }
                              if (!controller.loginView) {
                                final formRegister =
                                    controller.formKeyRegister.currentState;
                                if (formRegister!.validate()) {
                                  controller.loginView = true;
                                  controller.registerView = false;
                                  controller.update();
                                } else {
                                  if (controller.isErrorNamaRegister &&
                                      controller.isErrorEmailRegister &&
                                      controller.isErrorPasswordRegister &&
                                      controller.isErrorConfirmRegister) {
                                    controller.isErrorNamaRegister = true;
                                    controller.isErrorEmailRegister = true;
                                    controller.isErrorPasswordRegister = true;
                                    controller.isErrorConfirmRegister = true;
                                    controller.update();
                                  } else if (controller
                                      .namaRegisterController.text.isEmpty) {
                                    controller.isErrorNamaRegister = true;
                                    controller.update();
                                  } else if (controller
                                      .emailRegisterController.text.isEmpty) {
                                    controller.isErrorEmailRegister = true;
                                    controller.update();
                                  } else if (!RegExp(
                                          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                                      .hasMatch(controller
                                          .emailRegisterController.text)) {
                                    controller.isErrorEmailRegister = true;
                                    controller.update();
                                  } else if (controller
                                      .passwordRegisterController
                                      .text
                                      .isEmpty) {
                                    controller.isErrorPasswordRegister = true;
                                    controller.update();
                                  } else if (controller
                                      .confirmPasswordRegisterController
                                      .text
                                      .isEmpty) {
                                    controller.isErrorConfirmRegister = true;
                                    controller.update();
                                  } else if (controller
                                          .confirmPasswordRegisterController
                                          .text !=
                                      controller
                                          .passwordRegisterController.text) {
                                    controller.isErrorConfirmRegister = true;
                                    controller.update();
                                  } else {
                                    controller.isErrorNamaRegister = false;
                                    controller.isErrorEmailRegister = false;
                                    controller.isErrorPasswordRegister = false;
                                    controller.isErrorConfirmRegister = false;
                                    controller.update();
                                  }
                                }
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Text(
                                controller.loginView ? 'Masuk' : 'Daftar',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
