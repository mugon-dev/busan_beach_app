import 'package:busan_beach_app/api/app_router.dart';
import 'package:busan_beach_app/constant/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, widget) {
        return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget ?? Container());
      },
      theme: ThemeData(primaryColor: ColorPalette.white),
      getPages: AppRouter.generateRoute,
      initialRoute: EndPoint.MAIN.path,
    );
  }
}
