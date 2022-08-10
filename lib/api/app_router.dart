import 'package:busan_beach_app/module/detail/detail_page.dart';
import 'package:busan_beach_app/module/home/home_page.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

enum EndPoint {
  MAIN,
  DETAIL,
}

class AppRouter {
  static final Map<EndPoint, String> paths = {EndPoint.MAIN: "/", EndPoint.DETAIL: "/detail"};
  static final List<GetPage> generateRoute = [
    GetPage(name: paths[EndPoint.MAIN]!, page: () => const HomePage()),
    GetPage(name: paths[EndPoint.DETAIL]!, page: () => const DetailPage(), gestureWidth: (context) => Get.width * 0.5),
  ];
}

extension EndPointExtention on EndPoint {
  String get path => AppRouter.paths[this] ?? "";
}
