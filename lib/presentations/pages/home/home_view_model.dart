import 'package:get/get.dart';

import '../../../data/storage/storage_provider.dart';
import '../../base/view_model_base.dart';

/// HomeViewModel
class HomeViewModel extends ViewModelBase {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getInfo();
  }

  /// currentIndex
  final currentIndex = 0.obs;

  ///userName
  final userName = 'UserName'.obs;

  ///
  final visibilityTabBar = false.obs;

  ///
  Future<void> getInfo() async {
    userName(await StorageProvider.getUserName());
  }
}
