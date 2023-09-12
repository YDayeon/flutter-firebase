import 'package:get/get.dart';
import 'package:withuslaw_template/page/event_format.dart';
import 'package:withuslaw_template/page/home_page.dart';
import 'package:withuslaw_template/page/html_page.dart';
import 'package:withuslaw_template/page/notification_page.dart';
import 'package:withuslaw_template/page/root_page.dart';

class AppPages {
  AppPages._();
  // ignore: constant_identifier_names
  static const INITIAL = '/root';

  static final routes = [
    GetPage(
      name: '/root',
      page: () => const RootPage(),
    ),
    GetPage(
      name: '/home',
      page: () => const HomePage(),
    ),
    GetPage(
      name: '/notification',
      page: () => const NotificationPage(),
    ),
    GetPage(
      name: '/event-format',
      page: () => const EventFormatPage(),
    ),
    GetPage(
      name: '/html',
      page: () => const HTMLPage(),
    )
  ];
}
