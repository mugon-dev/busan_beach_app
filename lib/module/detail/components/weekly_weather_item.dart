import 'package:busan_beach_app/constant/fonts/noto_sans.dart';
import 'package:flutter/material.dart';

class WeeklyWeatherItem extends StatelessWidget {
  const WeeklyWeatherItem({
    Key? key,
    required this.highTempt,
    required this.lowTempt,
    required this.date,
    required this.day,
  }) : super(key: key);
  final int highTempt;
  final int lowTempt;
  final String date;
  final String day;
  final int max = 10;

  @override
  Widget build(BuildContext context) {
    final int resultTempt = highTempt - lowTempt;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Column(
            children: [
              Expanded(
                flex: max - resultTempt < 0 ? 0 : max - resultTempt,
                child: Container(),
              ),
              Text('$highTempt°C', style: NotoSans.c2D3641_s14_w400_h22),
              const SizedBox(height: 4),
              Expanded(
                  flex: resultTempt < 2 ? 0 : resultTempt,
                  child: Container(
                    width: 1,
                    height: double.infinity,
                    color: Colors.deepOrangeAccent,
                  )),
              const SizedBox(height: 4),
              Text('$lowTempt°C', style: NotoSans.c2D3641_s14_w400_h22),
            ],
          ),
        ),
        const SizedBox(height: 4),
        Container(
          width: 38,
          height: 38,
          color: Colors.deepOrangeAccent,
        ),
        const SizedBox(height: 4),
        Text(date, style: NotoSans.c2D3641_s14_w400_h22),
        const SizedBox(height: 4),
        Text(day, style: NotoSans.c2D3641_s14_w400_h22)
      ],
    );
  }
}
