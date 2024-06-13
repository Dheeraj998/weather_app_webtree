import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_webtree/02_view/weather_screen.dart';
import 'package:weather_app_webtree/03_controller/weather_controller.dart';
import 'package:weather_app_webtree/common/common_button.dart';
import 'package:weather_app_webtree/common/common_text.dart';
import 'package:weather_app_webtree/common/common_textfield.dart';
import 'package:weather_app_webtree/utils/constants/app_images.dart';
import 'package:weather_app_webtree/utils/service/alerts/custom_alert.dart';
import 'package:weather_app_webtree/utils/service/hrttp_response.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  final TextEditingController searchCtr = TextEditingController();
  final _formKey = new GlobalKey<FormState>();

  @override
  void dispose() {
    searchCtr.dispose();
    super.dispose();
  }

  getWetherApiFn() {
    final weather = context.read<WeatherController>();
    final form = _formKey.currentState;

    if (searchCtr.text.isEmpty) {
      CustomAlerts.customSnackBar(context,
          text: "Please enter your city", color: Colors.red);
      return;
    }
    weather.getWeatherApiFn(query: searchCtr.text).then((value) {
      FocusScope.of(context).unfocus();
      if (value?.status == APIstatus.onSuccess) {
        searchCtr.clear();
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => WeatherScreen(
                  locationName: searchCtr.text,
                )));
      } else {
        CustomAlerts.customSnackBar(context,
            text: value?.message ?? "Something wentwrong", color: Colors.red);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.withOpacity(.5),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 27.w),
          child: Center(
            child: OrientationBuilder(builder: (context, orientation) {
              return orientation == Orientation.landscape
                  ? _landScapeView()
                  : _portraitView();
            }),
          ),
        ));
  }

  Column _portraitView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CommonText(
          text: "Weather Forecasts",
          fontSize: 40.sp,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
        Image.asset(
          AppImages.weatherImage,
          height: 100.h,
          width: 100.w,
        ),
        20.verticalSpace,
        CommonTextField(
          controller: searchCtr,
          hintText: "Search city..",
          fillColor: Colors.white,
          hintStyle: const TextStyle(color: Colors.black),
        ),
        20.verticalSpace,
        Consumer<WeatherController>(builder: (context, weather, _) {
          return CommonButton(
            onLoading: weather.wetherApiResponse?.loading,
            onTap: getWetherApiFn,
            borderRadius: 10.r,
            buttonText: "Search",
            buttonStyle: const TextStyle(color: Colors.black),
            buttonWidth: 150.w,
            buttonHeight: 50.h,
            buttonColor: Colors.yellow,
          );
        })
      ],
    );
  }

  Column _landScapeView() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CommonText(
          text: "Weather Forecasts",
          fontSize: 15.sp,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
        Image.asset(
          AppImages.weatherImage,
          height: 100.h,
          width: 100.w,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 150.w,
              child: CommonTextField(
                controller: searchCtr,
                hintText: "Search city..",
                fillColor: Colors.white,
                hintStyle: TextStyle(color: Colors.black),
              ),
            ),
            20.horizontalSpace,
          ],
        ),
        20.verticalSpace,
        CommonButton(
          onTap: getWetherApiFn,
          borderRadius: 10.r,
          buttonText: "Search",
          buttonStyle: TextStyle(color: Colors.black),
          buttonWidth: 60.w,
          buttonHeight: 70.h,
          buttonColor: Colors.yellow,
        )
      ],
    );
  }
}
