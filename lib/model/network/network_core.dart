import 'package:dio/dio.dart';
import 'package:jabardentalcare/const/app_const.dart';

class NetworkCore {
  final dio = Dio();

  NetworkCore() {
    dio.options = BaseOptions(
      baseUrl: AppConst.baseUrl,
    );
  }
}