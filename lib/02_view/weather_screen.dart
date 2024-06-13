import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_webtree/03_controller/weather_controller.dart';
import 'package:weather_app_webtree/common/common_button.dart';
import 'package:weather_app_webtree/common/common_text.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key, required this.locationName});
  final String locationName;
  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherController>(builder: (context, weather, _) {
      return Scaffold(
        backgroundColor: Colors.blue.withOpacity(.5),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 27.w),
          child: OrientationBuilder(builder: (context, orientation) {
            return orientation == Orientation.portrait
                ? _portraitView(weather, context)
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      50.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonText(
                            text:
                                "${weather.weatherModel?.location?.name} ${weather.weatherModel?.location?.region ?? ""}" ??
                                    "",
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          CommonButton(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            buttonText: "Change",
                            borderRadius: 5.r,
                            buttonHeight: 60.h,
                            buttonWidth: 70.w,
                            buttonColor: Colors.yellow,
                          )
                        ],
                      ),
                      10.verticalSpace,
                      Row(
                        children: [
                          Image.network(
                            "https:${weather.weatherModel?.current?.condition?.icon}" ??
                                "",
                            height: 100.h,
                            width: 80.w,
                            fit: BoxFit.cover,
                          ),
                          CommonText(
                            text:
                                "${weather.weatherModel?.current?.tempC.toString()} \u2103" ??
                                    "",
                            color: Colors.white,
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                      Expanded(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CommonText(
                                text: weather.weatherModel?.current?.condition
                                        ?.text ??
                                    "",
                                color: Colors.white,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              30.verticalSpace,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  WeatherDetailsColumnWidget(
                                    head: "Humidity",
                                    body:
                                        "${weather.weatherModel?.current?.humidity ?? "%"} %"
                                        "",
                                  ),
                                  15.horizontalSpace,
                                  WeatherDetailsColumnWidget(
                                    head: "Wind Speed",
                                    body:
                                        "${weather.weatherModel?.current?.windKph ?? ""} Kph"
                                        "",
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  );
          }),
        ),
      );
    });
  }

  Column _portraitView(WeatherController weather, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        50.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CommonText(
              text:
                  "${weather.weatherModel?.location?.name} ${weather.weatherModel?.location?.region ?? ""}" ??
                      "",
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
            ),
            CommonButton(
              onTap: () {
                Navigator.of(context).pop();
              },
              buttonText: "Change",
              borderRadius: 5.r,
              buttonHeight: 40.h,
              buttonWidth: 100.w,
              buttonColor: Colors.yellow,
            )
          ],
        ),
        Expanded(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https:${weather.weatherModel?.current?.condition?.icon}" ??
                      "",
                  height: 180.h,
                  width: 180.w,
                  fit: BoxFit.cover,
                ),
                CommonText(
                  text:
                      "${weather.weatherModel?.current?.tempC.toString()} \u2103" ??
                          "",
                  color: Colors.white,
                  fontSize: 50.sp,
                  fontWeight: FontWeight.w600,
                ),
                CommonText(
                  text: weather.weatherModel?.current?.condition?.text ?? "",
                  color: Colors.white,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w600,
                ),
                30.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    WeatherDetailsColumnWidget(
                      head: "Humidity",
                      body:
                          "${weather.weatherModel?.current?.humidity ?? "%"} %"
                          "",
                    ),
                    15.horizontalSpace,
                    WeatherDetailsColumnWidget(
                      head: "Wind Speed",
                      body:
                          "${weather.weatherModel?.current?.windKph ?? ""} Kph"
                          "",
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class WeatherDetailsColumnWidget extends StatelessWidget {
  const WeatherDetailsColumnWidget({
    super.key,
    required this.head,
    required this.body,
  });
  final String head;
  final String body;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CommonText(
          text: head,
          color: Colors.white,
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
        ),
        CommonText(
          text: body,
          color: Colors.white,
          fontSize: 17.sp,
          fontWeight: FontWeight.w600,
        ),
      ],
    );
  }
}
