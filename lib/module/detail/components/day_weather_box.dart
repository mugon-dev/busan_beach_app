import 'package:busan_beach_app/constant/color_palette.dart';
import 'package:busan_beach_app/constant/fonts/noto_sans.dart';
import 'package:flutter/material.dart';

import 'day_weather_item.dart';

class DayWeatherBox extends StatelessWidget {
  const DayWeatherBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 213,
      color: ColorPalette.cD9D9D9,
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('하루날씨', style: NotoSans.c3F464E_s18_w700_h29),
          const SizedBox(height: 24),
          Expanded(
            child: ListView.separated(
              itemCount: 24,
              scrollDirection: Axis.horizontal,
              itemBuilder: (index, context) => const DayWeatherItem(tempt: 28, percent: 20, time: 21),
              separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 8),
            ),
          )
        ],
      ),
    );
  }
}
