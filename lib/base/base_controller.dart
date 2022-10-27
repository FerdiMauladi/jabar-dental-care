import 'package:get/get.dart';
import 'package:jabardentalcare/model/localstorage/storage_core.dart';
import '../model/network/network_core.dart';

abstract class BaseController extends GetxController {
  final networkCore = Get.find<NetworkCore>();
  final storageCore = Get.find<StorageCore>();
}