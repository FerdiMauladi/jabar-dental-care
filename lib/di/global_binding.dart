import 'package:get/get.dart';
import 'package:jabardentalcare/model/localstorage/storage_core.dart';
import 'package:jabardentalcare/model/network/network_core.dart';


class GlobalBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<NetworkCore>(NetworkCore(), permanent: true);
    Get.put<StorageCore>(StorageCore(), permanent: true);
  }
}