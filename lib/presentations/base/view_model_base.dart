import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

/// Status
enum Status {
  ///
  normal,

  ///
  loading,

  ///
  success,

  ///
  error
}

/// ViewModelBase
abstract class ViewModelBase extends GetxController {
  /// subscription
  // late StreamSubscription<ConnectivityResult> subscription;

  /// logger
  final logger = Logger();

  /// status
  final status = Status.normal.obs;

  /// listenConnectivityStatus
  void listenConnectivityStatus() {
    // subscription =
    //     Connectivity().onConnectivityChanged.listen(_updateConnectionStatus);
  }

  /// cancelConnectivitySubscription
  void cancelConnectivitySubscription() {
    // subscription.cancel();
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    switch (result) {
      case ConnectivityResult.wifi:
        onConnected();
        logger.d('ConnectivityResult.wifi');
        break;

      case ConnectivityResult.mobile:
        logger.d('ConnectivityResult.mobile');
        onConnected();
        break;

      case ConnectivityResult.none:
        logger.d('ConnectivityResult.none');
        onDisconnect();
        break;
    }
  }

  /// onInitView
  void onInitView() {}

  /// onDisposeView
  void onDisposeView() {}

  /// onConnected
  void onConnected() {}

  /// onDisconnect
  void onDisconnect() {}
}
