import 'package:busan_beach_app/constant/color_palette.dart';
import 'package:busan_beach_app/constant/fonts/noto_sans.dart';
import 'package:busan_beach_app/module/detail/components/weekly_weather_item.dart';
import 'package:flutter/material.dart';

class WeeklyWeatherBox extends StatelessWidget {
  const WeeklyWeatherBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      color: ColorPalette.cD9D9D9,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 13),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('주간날씨', style: NotoSans.c3F464E_s18_w700_h29),
          const SizedBox(height: 24),
          Expanded(
              child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 7,
            itemBuilder: (context, index) => const WeeklyWeatherItem(highTempt: 36, lowTempt: 28, date: '08.09', day: '화'),
            separatorBuilder: (context, index) => const SizedBox(width: 8),
          )),
        ],
      ),
    );
  }
}
