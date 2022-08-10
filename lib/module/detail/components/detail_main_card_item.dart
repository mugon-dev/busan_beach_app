import 'package:busan_beach_app/constant/color_palette.dart';
import 'package:busan_beach_app/constant/fonts/noto_sans.dart';
import 'package:flutter/material.dart';

class MainDetailCardItem extends StatelessWidget {
  const MainDetailCardItem({
    Key? key,
    required this.textFcst,
    required this.typeFcst,
    required this.resultFcst,
    this.isSmall = false,
  }) : super(key: key);
  final String textFcst;
  final String typeFcst;
  final String resultFcst;
  final bool isSmall;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isSmall ? 165 : 200,
      height: 100,
      color: ColorPalette.cD9D9D9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: isSmall ? 35 : 50,
                height: isSmall ? 35 : 50,
                color: Colors.red,
              ),
              const SizedBox(height: 2),
              Text(textFcst, style: NotoSans.c2D3641_s14_w400_h22),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(typeFcst, style: NotoSans.c2D3641_s14_w400_h22),
              Text(resultFcst, style: NotoSans.c2D3641_s32_w500_h58),
            ],
          ),
        ],
      ),
    );
  }
}
