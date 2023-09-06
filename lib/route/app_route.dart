import 'package:get/get.dart';
import 'package:withuslaw_template/page/root_page.dart';

class AppPages {
  AppPages._();
  static const INITIAL = '/root';

  static final routes = [GetPage(name: '/root', page: () => const RootPage())];
}
