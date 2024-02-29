import 'package:flutter/material.dart';
import 'package:flutter_app_for_travel/core/consts/const.dart';
import 'package:flutter_app_for_travel/core/router/router.dart';
import 'package:flutter_app_for_travel/core/theme/app_colors/app_colors.dart';
import 'package:flutter_app_for_travel/core/theme/app_text_style/app_text_style.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Get.offAndToNamed(AppRouter.home);
    });
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.gradientTop,
                  AppColors.gradientBottom,
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppConsts.splashIcon, height: 100, width: 100),
                const SizedBox(height: 60),
                Text(
                  'Find Your Dream',
                  style: AppTextStyle.splashText,
                ),
                Text(
                  'Destination With Us',
                  style: AppTextStyle.splashText,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
