import 'package:busan_beach_app/constant/fonts/noto_sans.dart';
import 'package:busan_beach_app/module/detail/components/day_weather_box.dart';
import 'package:busan_beach_app/module/detail/components/detail_main_card_item.dart';
import 'package:busan_beach_app/module/detail/components/weekly_weather_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: statusBarHeight, right: 16, left: 16, bottom: 24),
        child: ListView(
          children: [
            mainBox(statusBarHeight),
            const SizedBox(height: 48),
            const DayWeatherBox(),
            const SizedBox(height: 16),
            const WeeklyWeatherBox(),
            const SizedBox(height: 48),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MainDetailCardItem(
                  textFcst: '맑음',
                  typeFcst: '기온',
                  resultFcst: '37°C',
                  isSmall: true,
                ),
                MainDetailCardItem(
                  textFcst: '맑음',
                  typeFcst: '기온',
                  resultFcst: '37°C',
                  isSmall: true,
                )
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MainDetailCardItem(
                  textFcst: '맑음',
                  typeFcst: '기온',
                  resultFcst: '37°C',
                  isSmall: true,
                ),
                MainDetailCardItem(
                  textFcst: '맑음',
                  typeFcst: '기온',
                  resultFcst: '37°C',
                  isSmall: true,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget mainBox(double statusBarHeight) {
    return SizedBox(
      height: Get.height - 24 - statusBarHeight,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  '8월 6일 토요일',
                  style: NotoSans.c2D3641_s18_w400_h36,
                ),
                Text(
                  '해운대',
                  style: NotoSans.c3F464E_s56_w700_h112,
                ),
                MainDetailCardItem(
                  textFcst: '맑음',
                  typeFcst: '기온',
                  resultFcst: '37°C',
                )
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                MainDetailCardItem(
                  textFcst: '맑음',
                  typeFcst: '기온',
                  resultFcst: '37°C',
                ),
                SizedBox(height: 8),
                MainDetailCardItem(
                  textFcst: '맑음',
                  typeFcst: '기온',
                  resultFcst: '37°C',
                ),
                SizedBox(height: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
