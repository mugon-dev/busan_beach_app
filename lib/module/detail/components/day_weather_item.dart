import 'package:busan_beach_app/constant/fonts/noto_sans.dart';
import 'package:flutter/material.dart';

class DayWeatherItem extends StatelessWidget {
  const DayWeatherItem({
    Key? key,
    required this.tempt,
    required this.percent,
    required this.time,
  }) : super(key: key);
  final int tempt;
  final int percent;
  final int time;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('$tempt°C', style: NotoSans.c2D3641_s14_w400_h22),
        Container(width: 38, height: 38, color: Colors.redAccent),
        Text('$percent%', style: NotoSans.c2D3641_s14_w400_h22),
        Text('$time시', style: NotoSans.c2D3641_s14_w400_h22),
      ],
    );
  }
}
