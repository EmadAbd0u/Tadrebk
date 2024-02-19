import 'package:emad_s_application1/presentation/splash_screens/android_large_one_screen.dart';
import 'package:flutter/material.dart';
import 'package:emad_s_application1/presentation/onboardind_screen_one/android_large_twentyfour_screen.dart';
import 'package:emad_s_application1/presentation/loading_page_screen/loading_page_screen.dart';
import 'package:emad_s_application1/presentation/login_page_as_company_screen/login_page_as_company_screen.dart';
import 'package:emad_s_application1/presentation/android_large_sixteen_screen/android_large_sixteen_screen.dart';
import 'package:emad_s_application1/presentation/android_large_twenty_screen/android_large_twenty_screen.dart';
import 'package:emad_s_application1/presentation/android_large_eighteen_screen/android_large_eighteen_screen.dart';
import 'package:emad_s_application1/presentation/android_large_nineteen_screen/android_large_nineteen_screen.dart';
import 'package:emad_s_application1/presentation/login_person_screen/login_person_screen.dart';
import 'package:emad_s_application1/presentation/create_a_new_account_page_as_a_company_screen/create_a_new_account_page_as_a_company_screen.dart';
import 'package:emad_s_application1/presentation/regester_person_screen/regester_person_screen.dart';
import 'package:emad_s_application1/presentation/create_a_new_account_page_as_a_person_screen/create_a_new_account_page_as_a_person_screen.dart';
import 'package:emad_s_application1/presentation/successfully_person_screen/successfully_person_screen.dart';
import 'package:emad_s_application1/presentation/android_large_twentyeight_screen/android_large_twentyeight_screen.dart';
import 'package:emad_s_application1/presentation/android_large_six_container_screen/android_large_six_container_screen.dart';
import 'package:emad_s_application1/presentation/android_large_twentysix_screen/android_large_twentysix_screen.dart';
import 'package:emad_s_application1/presentation/android_large_twentyseven_screen/android_large_twentyseven_screen.dart';
import 'package:emad_s_application1/presentation/chat_bot_page_screen/chat_bot_page_screen.dart';
import 'package:emad_s_application1/presentation/training_classification_screen/training_classification_screen.dart';
import 'package:emad_s_application1/presentation/frame_165_screen/frame_165_screen.dart';
import 'package:emad_s_application1/presentation/frame_167_screen/frame_167_screen.dart';
import 'package:emad_s_application1/presentation/home_person_screen/home_person_screen.dart';
import 'package:emad_s_application1/presentation/frame_171_screen/frame_171_screen.dart';
import 'package:emad_s_application1/presentation/android_large_twentynine_screen/android_large_twentynine_screen.dart';
import 'package:emad_s_application1/presentation/frame_174_screen/frame_174_screen.dart';
import 'package:emad_s_application1/presentation/chat_bot_page_one_screen/chat_bot_page_one_screen.dart';
import 'package:emad_s_application1/presentation/android_large_fifteen_screen/android_large_fifteen_screen.dart';
import 'package:emad_s_application1/presentation/frame_172_screen/frame_172_screen.dart';
import 'package:emad_s_application1/presentation/frame_173_screen/frame_173_screen.dart';
import 'package:emad_s_application1/presentation/android_large_twentyone_screen/android_large_twentyone_screen.dart';
import 'package:emad_s_application1/presentation/android_large_eleven_screen/android_large_eleven_screen.dart';
import 'package:emad_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

import '../presentation/onboardind_screen_one/android_large_twentyfour_screen.dart';
import '../presentation/onboardind_screen_tow/android_large_three_screen.dart';

class AppRoutes {

  
  static const String splashScreen = '/splash_Screen';

  static const String androidLargeOneScreen = '/android_large_one_screen';

  static const String onboardindScreenOne =
      '/android_large_twentyfour_screen';

  static const String onboardindScreenTow = '/android_large_three_screen';


  static const String onboardindScreenThree = '/loading_page_screen';

  static const String loginPageAsCompanyScreen =
      '/login_page_as_company_screen';

  static const String androidLargeSixteenScreen =
      '/android_large_sixteen_screen';

  static const String androidLargeTwentyScreen = '/android_large_twenty_screen';

  static const String androidLargeEighteenScreen =
      '/android_large_eighteen_screen';

  static const String androidLargeNineteenScreen =
      '/android_large_nineteen_screen';

  static const String loginPersonScreen = '/login_person_screen';

  static const String createANewAccountPageAsACompanyScreen =
      '/create_a_new_account_page_as_a_company_screen';

  static const String regesterPersonScreen = '/regester_person_screen';

  static const String createANewAccountPageAsAPersonScreen =
      '/create_a_new_account_page_as_a_person_screen';

  static const String successfullyPersonScreen = '/successfully_person_screen';

  static const String androidLargeTwentyeightScreen =
      '/android_large_twentyeight_screen';

  static const String androidLargeSixPage = '/android_large_six_page';

  static const String androidLargeSixContainerScreen =
      '/android_large_six_container_screen';

  static const String androidLargeTwentysixScreen =
      '/android_large_twentysix_screen';

  static const String androidLargeTwentysevenScreen =
      '/android_large_twentyseven_screen';

  static const String chatBotPageScreen = '/chat_bot_page_screen';

  static const String frame168Page = '/frame_168_page';

  static const String trainingClassificationScreen =
      '/training_classification_screen';

  static const String frame164Page = '/frame_164_page';

  static const String frame165Screen = '/frame_165_screen';

  static const String frame167Screen = '/frame_167_screen';

  static const String homePersonScreen = '/home_person_screen';

  static const String frame171Screen = '/frame_171_screen';

  static const String androidLargeTwentynineScreen =
      '/android_large_twentynine_screen';

  static const String frame174Screen = '/frame_174_screen';

  static const String chatBotPageOneScreen = '/chat_bot_page_one_screen';

  static const String androidLargeFifteenScreen =
      '/android_large_fifteen_screen';

  static const String frame172Screen = '/frame_172_screen';

  static const String frame173Screen = '/frame_173_screen';

  static const String androidLargeTwentyoneScreen =
      '/android_large_twentyone_screen';

  static const String androidLargeElevenScreen = '/android_large_eleven_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {

        splashScreen: SplashScreen.builder,
        onboardindScreenOne: OnBoardingScreenOne.builder,
        onboardindScreenTow: OnBoardingScreenTow.builder,
        onboardindScreenThree: OnBoardingScreenThree.builder,
        loginPageAsCompanyScreen: LoginPageAsCompanyScreen.builder,
        androidLargeSixteenScreen: AndroidLargeSixteenScreen.builder,
        androidLargeTwentyScreen: AndroidLargeTwentyScreen.builder,
        androidLargeEighteenScreen: AndroidLargeEighteenScreen.builder,
        androidLargeNineteenScreen: AndroidLargeNineteenScreen.builder,
        loginPersonScreen: LoginPersonScreen.builder,
        createANewAccountPageAsACompanyScreen:
            CreateANewAccountPageAsACompanyScreen.builder,
        regesterPersonScreen: RegesterPersonScreen.builder,
        createANewAccountPageAsAPersonScreen:
            CreateANewAccountPageAsAPersonScreen.builder,
        successfullyPersonScreen: SuccessfullyPersonScreen.builder,
        androidLargeTwentyeightScreen: AndroidLargeTwentyeightScreen.builder,
        androidLargeSixContainerScreen: AndroidLargeSixContainerScreen.builder,
        androidLargeTwentysixScreen: AndroidLargeTwentysixScreen.builder,
        androidLargeTwentysevenScreen: AndroidLargeTwentysevenScreen.builder,
        chatBotPageScreen: ChatBotPageScreen.builder,
        trainingClassificationScreen: TrainingClassificationScreen.builder,
        frame165Screen: Frame165Screen.builder,
        frame167Screen: Frame167Screen.builder,
        homePersonScreen: HomePersonScreen.builder,
        frame171Screen: Frame171Screen.builder,
        androidLargeTwentynineScreen: AndroidLargeTwentynineScreen.builder,
        frame174Screen: Frame174Screen.builder,
        chatBotPageOneScreen: ChatBotPageOneScreen.builder,
        androidLargeFifteenScreen: AndroidLargeFifteenScreen.builder,
        frame172Screen: Frame172Screen.builder,
        frame173Screen: Frame173Screen.builder,
        androidLargeTwentyoneScreen: AndroidLargeTwentyoneScreen.builder,
        androidLargeElevenScreen: AndroidLargeElevenScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
