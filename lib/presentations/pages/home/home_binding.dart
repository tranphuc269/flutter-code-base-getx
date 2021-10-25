import 'package:get/get.dart';

import 'home_view_model.dart';

/// HomeBinding
class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeViewModel>(() => HomeViewModel());
  }
}
