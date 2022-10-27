import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:jabardentalcare/model/localstorage/storage_core.dart';
import 'package:jabardentalcare/screen/bottomappbar/bottomappbar.dart';

import '../../model/login_model.dart';

class LoginRegisterScreen extends StatefulWidget {
  const LoginRegisterScreen({Key? key}) : super(key: key);

  @override
  State<LoginRegisterScreen> createState() => _LoginRegisterScreenState();
}

class _LoginRegisterScreenState extends State<LoginRegisterScreen> {
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
  bool _obscurepasswordLogin = true;
  bool _obscurepasswordRegister = true;
  bool isRemember = false;
  bool isLoading = false;

  LoginModel? loginModel;

  final storage = StorageCore();
  final _formKey = GlobalKey<FormState>();
  final _formKeyRegister = GlobalKey<FormState>();

  final _emailLoginController = TextEditingController();
  final _passwordLoginController = TextEditingController();
  final _namaRegisterController = TextEditingController();
  final _emailRegisterController = TextEditingController();
  final _passwordRegisterController = TextEditingController();
  final _confirmPasswordRegisterController = TextEditingController();

  @override
  void dispose() {
    _emailLoginController.dispose();
    _passwordLoginController.dispose();
    _namaRegisterController.dispose();
    _emailRegisterController.dispose();
    _passwordRegisterController.dispose();
    _confirmPasswordRegisterController.dispose();
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
        setState(() {
          loginModel = LoginModel.fromJson(response.data);
          storage.saveAuthResponse(loginModel);
          isLoading = false;
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const BottomAppBarWidget(),
            ),
          );
        });
      }
      print(response.data);
    } on DioError catch (e) {
      setState(() {
        isLoading = false;
      });
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
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
              height: loginView
                  ? isErrorEmailLogin || isErrorPasswordLogin
                      ? isErrorEmailLogin && isErrorPasswordLogin
                          ? height * 0.53
                          : height * 0.51
                      : height * 0.48
                  : isErrorNamaRegister ||
                          isErrorEmailRegister ||
                          isErrorPasswordRegister ||
                          isErrorConfirmRegister
                      ? isErrorNamaRegister && isErrorEmailRegister ||
                              isErrorPasswordRegister ||
                              isErrorConfirmRegister
                          ? isErrorNamaRegister &&
                                      isErrorEmailRegister &&
                                      isErrorPasswordRegister ||
                                  isErrorConfirmRegister
                              ? isErrorNamaRegister &&
                                      isErrorEmailRegister &&
                                      isErrorPasswordRegister &&
                                      isErrorConfirmRegister
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
                    height: loginView
                        ? isErrorEmailLogin || isErrorPasswordLogin
                            ? isErrorEmailLogin && isErrorPasswordLogin
                                ? height * 0.53
                                : height * 0.51
                            : height * 0.48
                        : isErrorNamaRegister ||
                                isErrorEmailRegister ||
                                isErrorPasswordRegister ||
                                isErrorConfirmRegister
                            ? isErrorNamaRegister && isErrorEmailRegister ||
                                    isErrorPasswordRegister ||
                                    isErrorConfirmRegister
                                ? isErrorNamaRegister &&
                                            isErrorEmailRegister &&
                                            isErrorPasswordRegister ||
                                        isErrorConfirmRegister
                                    ? isErrorNamaRegister &&
                                            isErrorEmailRegister &&
                                            isErrorPasswordRegister &&
                                            isErrorConfirmRegister
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
                    height: loginView
                        ? isErrorEmailLogin || isErrorPasswordLogin
                            ? isErrorEmailLogin && isErrorPasswordLogin
                                ? height * 0.49
                                : height * 0.47
                            : height * 0.44
                        : isErrorNamaRegister ||
                                isErrorEmailRegister ||
                                isErrorPasswordRegister ||
                                isErrorConfirmRegister
                            ? isErrorNamaRegister && isErrorEmailRegister ||
                                    isErrorPasswordRegister ||
                                    isErrorConfirmRegister
                                ? isErrorNamaRegister &&
                                            isErrorEmailRegister &&
                                            isErrorPasswordRegister ||
                                        isErrorConfirmRegister
                                    ? isErrorNamaRegister &&
                                            isErrorEmailRegister &&
                                            isErrorPasswordRegister &&
                                            isErrorConfirmRegister
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
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    loginView = true;
                                    registerView = false;
                                    isErrorNamaRegister = false;
                                    isErrorEmailRegister = false;
                                    isErrorPasswordRegister = false;
                                    isErrorConfirmRegister = false;
                                    _emailLoginController.clear();
                                    _passwordLoginController.clear();
                                  });
                                },
                                child: AnimatedContainer(
                                  curve: Curves.easeIn,
                                  duration: const Duration(milliseconds: 500),
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.all(8.0),
                                  width: width * 0.3,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: loginView
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
                                      color: loginView
                                          ? const Color(0xFF1166E4)
                                          : Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    loginView = false;
                                    registerView = true;
                                    isErrorEmailLogin = false;
                                    isErrorPasswordLogin = false;
                                    _emailRegisterController.clear();
                                    _namaRegisterController.clear();
                                    _passwordRegisterController.clear();
                                    _confirmPasswordRegisterController.clear();
                                  });
                                },
                                child: AnimatedContainer(
                                  curve: Curves.easeOut,
                                  duration: const Duration(milliseconds: 500),
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.all(8.0),
                                  width: width * 0.3,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: registerView
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
                                      color: registerView
                                          ? const Color(0xFF1166E4)
                                          : Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          if (loginView)
                            Container(
                              padding: const EdgeInsets.all(16.0),
                              margin: const EdgeInsets.only(top: 25),
                              child: Form(
                                key: _formKey,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Email',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      child: TextFormField(
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        cursorColor: Colors.black,
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        controller: _emailLoginController,
                                        onChanged: (email) {
                                          if (email.isEmpty) {
                                            setState(() {
                                              isErrorEmailLogin = true;
                                            });
                                          } else if (!RegExp(
                                                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                                              .hasMatch(email)) {
                                            setState(() {
                                              isErrorEmailLogin = true;
                                            });
                                          } else {
                                            setState(() {
                                              isErrorEmailLogin = false;
                                            });
                                          }
                                        },
                                        validator: (email) {
                                          if (email == null || email.isEmpty) {
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
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            borderSide: const BorderSide(
                                              color: Colors.black,
                                              width: 1,
                                              style: BorderStyle.solid,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            borderSide: const BorderSide(
                                              color: Colors.red,
                                              width: 1,
                                              style: BorderStyle.solid,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
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
                                      margin: const EdgeInsets.only(top: 20),
                                      child: const Text(
                                        'Password',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      child: TextFormField(
                                        obscureText: _obscurepasswordLogin,
                                        cursorColor: Colors.black,
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        controller: _passwordLoginController,
                                        onChanged: (password) {
                                          if (password.isEmpty) {
                                            setState(() {
                                              isErrorPasswordLogin = true;
                                            });
                                          } else {
                                            setState(() {
                                              isErrorPasswordLogin = false;
                                            });
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
                                          errorText: isError
                                              ? 'Incorrect Password'
                                              : null,
                                          fillColor: Colors.white,
                                          suffixIcon: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _obscurepasswordLogin =
                                                    !_obscurepasswordLogin;
                                              });
                                            },
                                            child: Icon(
                                              _obscurepasswordLogin
                                                  ? Icons.visibility_off
                                                  : Icons.visibility,
                                              color: isPasswordError || isError
                                                  ? Colors.red
                                                  : Colors.black,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            borderSide: const BorderSide(
                                              color: Colors.black,
                                              width: 1,
                                              style: BorderStyle.solid,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            borderSide: const BorderSide(
                                              color: Colors.red,
                                              width: 1,
                                              style: BorderStyle.solid,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
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
                                      margin: const EdgeInsets.only(top: 12.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                isRemember = !isRemember;
                                              });
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Checkbox(
                                                  value: isRemember,
                                                  onChanged: (bool? data) {
                                                    setState(
                                                      () {
                                                        isRemember = data!;
                                                      },
                                                    );
                                                  },
                                                ),
                                                const Text(
                                                  'Ingat Saya',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500,
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
                          if (!loginView)
                            Container(
                              padding: const EdgeInsets.all(16.0),
                              margin: const EdgeInsets.only(top: 25),
                              child: Form(
                                key: _formKeyRegister,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Nama',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      child: TextFormField(
                                        cursorColor: Colors.black,
                                        controller: _namaRegisterController,
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        onChanged: (nama) {
                                          if (nama.isEmpty) {
                                            setState(() {
                                              isErrorNamaRegister = true;
                                            });
                                          } else {
                                            setState(() {
                                              isErrorNamaRegister = false;
                                            });
                                          }
                                        },
                                        validator: (name) {
                                          if (name == null || name.isEmpty) {
                                            return 'Name cannot be empty';
                                          } else {
                                            return null;
                                          }
                                        },
                                        decoration: InputDecoration(
                                          hintText: 'Masukan Nama Lengkap Anda',
                                          filled: true,
                                          fillColor: Colors.white,
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            borderSide: const BorderSide(
                                              color: Colors.black,
                                              width: 1,
                                              style: BorderStyle.solid,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            borderSide: const BorderSide(
                                              color: Colors.red,
                                              width: 1,
                                              style: BorderStyle.solid,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
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
                                      margin: const EdgeInsets.only(top: 10),
                                      child: const Text(
                                        'Email',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      child: TextFormField(
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        cursorColor: Colors.black,
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        controller: _emailRegisterController,
                                        onChanged: (email) {
                                          if (email.isEmpty) {
                                            setState(() {
                                              isErrorEmailRegister = true;
                                            });
                                          } else if (!RegExp(
                                                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                                              .hasMatch(email)) {
                                            setState(() {
                                              isErrorEmailRegister = true;
                                            });
                                          } else {
                                            setState(() {
                                              isErrorEmailRegister = false;
                                            });
                                          }
                                        },
                                        validator: (email) {
                                          if (email == null || email.isEmpty) {
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
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            borderSide: const BorderSide(
                                              color: Colors.black,
                                              width: 5,
                                              style: BorderStyle.solid,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            borderSide: const BorderSide(
                                              color: Colors.red,
                                              width: 1,
                                              style: BorderStyle.solid,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
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
                                      margin: const EdgeInsets.only(top: 20),
                                      child: const Text(
                                        'Password',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      child: TextFormField(
                                        obscureText: _obscurepasswordRegister,
                                        cursorColor: Colors.black,
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        controller: _passwordRegisterController,
                                        onChanged: (password) {
                                          if (password.isEmpty) {
                                            setState(() {
                                              isErrorPasswordRegister = true;
                                            });
                                          } else {
                                            setState(() {
                                              isErrorPasswordRegister = false;
                                            });
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
                                              setState(() {
                                                _obscurepasswordRegister =
                                                    !_obscurepasswordRegister;
                                              });
                                            },
                                            child: Icon(
                                              _obscurepasswordRegister
                                                  ? Icons.visibility_off
                                                  : Icons.visibility,
                                              color: Colors.black,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            borderSide: const BorderSide(
                                              color: Colors.black,
                                              width: 1,
                                              style: BorderStyle.solid,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            borderSide: const BorderSide(
                                              color: Colors.red,
                                              width: 1,
                                              style: BorderStyle.solid,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
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
                                      margin: const EdgeInsets.only(top: 20),
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
                                        obscureText: _obscurepasswordRegister,
                                        cursorColor: Colors.black,
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        controller:
                                            _confirmPasswordRegisterController,
                                        onChanged: (confirmPassword) {
                                          if (confirmPassword.isEmpty) {
                                            setState(() {
                                              isErrorConfirmRegister = true;
                                            });
                                          } else if (confirmPassword !=
                                              _passwordRegisterController
                                                  .text) {
                                            setState(() {
                                              isErrorConfirmRegister = true;
                                            });
                                          } else {
                                            setState(() {
                                              isErrorConfirmRegister = false;
                                            });
                                          }
                                        },
                                        validator: (confirmPassword) {
                                          if (confirmPassword == null ||
                                              confirmPassword.isEmpty) {
                                            return 'Confirm password tidak boleh kosong';
                                          } else if (confirmPassword !=
                                              _passwordRegisterController
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
                                              setState(() {
                                                _obscurepasswordRegister =
                                                    !_obscurepasswordRegister;
                                              });
                                            },
                                            child: Icon(
                                              _obscurepasswordRegister
                                                  ? Icons.visibility_off
                                                  : Icons.visibility,
                                              color: Colors.black,
                                            ),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            borderSide: const BorderSide(
                                              color: Colors.red,
                                              width: 1,
                                              style: BorderStyle.solid,
                                            ),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            borderSide: const BorderSide(
                                              color: Colors.black,
                                              width: 1,
                                              style: BorderStyle.solid,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(
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
                    bottom: loginView ? 10 : 40,
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
                          if (loginView) {
                            final form = _formKey.currentState;
                            if (form!.validate()) {
                              // postLogin(_emailLoginController.text,
                              //     _passwordLoginController.text);
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const BottomAppBarWidget(),
                                ),
                              );
                            } else {
                              if (_emailLoginController.text.isEmpty) {
                                setState(() {
                                  isErrorEmailLogin = true;
                                });
                              } else if (!RegExp(
                                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                                  .hasMatch(_emailLoginController.text)) {
                                setState(() {
                                  isErrorEmailLogin = true;
                                });
                              } else if (_passwordLoginController
                                  .text.isEmpty) {
                                setState(() {
                                  isErrorPasswordLogin = true;
                                });
                              } else {
                                setState(() {
                                  isErrorEmailLogin = false;
                                  isErrorPasswordLogin = false;
                                });
                              }
                            }
                          }
                          if (!loginView) {
                            final formRegister = _formKeyRegister.currentState;
                            if (formRegister!.validate()) {
                              setState(
                                () {
                                  loginView = true;
                                  registerView = false;
                                },
                              );
                            } else {
                              if (_namaRegisterController.text.isEmpty) {
                                setState(() {
                                  isErrorNamaRegister = true;
                                });
                              } else if (_emailRegisterController
                                  .text.isEmpty) {
                                setState(() {
                                  isErrorEmailRegister = true;
                                });
                              } else if (!RegExp(
                                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                                  .hasMatch(_emailRegisterController.text)) {
                                setState(() {
                                  isErrorEmailRegister = true;
                                });
                              } else if (_passwordRegisterController
                                  .text.isEmpty) {
                                setState(() {
                                  isErrorPasswordRegister = true;
                                });
                              } else if (_confirmPasswordRegisterController
                                  .text.isEmpty) {
                                setState(() {
                                  isErrorConfirmRegister = true;
                                });
                              } else if (_confirmPasswordRegisterController
                                      .text !=
                                  _passwordRegisterController.text) {
                                setState(() {
                                  isErrorConfirmRegister = true;
                                });
                              } else {
                                setState(() {
                                  isErrorNamaRegister = false;
                                  isErrorEmailRegister = false;
                                  isErrorPasswordRegister = false;
                                  isErrorConfirmRegister = false;
                                });
                              }
                            }
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Text(
                            loginView ? 'Masuk' : 'Daftar',
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
  }
}
