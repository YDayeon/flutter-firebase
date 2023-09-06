import 'package:get/get.dart';

class LifecycleCntr extends FullLifeCycleController with FullLifeCycleMixin {
  @override
  void onInit() {
    super.onInit();
    Get.log("onInit");
  }

  @override
  void onDetached() {
    // TODO: implement onDetached
  }

  @override
  void onInactive() {
    // TODO: implement onInactive
  }

  @override
  void onPaused() {
    // TODO: implement onPaused
  }

  @override
  void onResumed() {
    // TODO: implement onResumed
  }
}
