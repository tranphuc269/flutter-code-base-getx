import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import '../data/network/dio_base.dart';

/// MainBinding
class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Dio>(DioBase.getDio);
  }
}
