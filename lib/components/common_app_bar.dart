import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  CommonAppBar({Key? key}) : super(key: key);
  double statusBarHeight = MediaQuery.of(Get.context!).padding.top;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: statusBarHeight,
      color: Colors.transparent,
    );
  }

  @override
  Size preferredSize =
      Size.fromHeight(60 + MediaQuery.of(Get.context!).padding.top);
}
