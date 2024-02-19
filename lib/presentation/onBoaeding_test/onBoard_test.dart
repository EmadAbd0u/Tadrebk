import 'package:emad_s_application1/presentation/login_person_screen/login_person_screen.dart';
import 'package:emad_s_application1/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/utils/navigator_service.dart';


class BoardingModel {
  late final String lottieJson;
  late final String title;
  late final String body;

  BoardingModel({
    required this.lottieJson,
    required this.title,
    required this.body,
  });
}

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<BoardingModel> boarding = [
    BoardingModel(
      lottieJson:
      'https://lottie.host/2a545d48-f33c-4da9-860b-16e6f29f683b/fdBEOciurB.json',
      title: 'اهلا وسهلاً بك أنشاء حسابك الان في تطبيق تدريبك',
      body: 'أستمتع بكل المزايا الحصرية في مكان واحد',
    ),
    BoardingModel(
      lottieJson:
      'https://lottie.host/8b926273-6cc0-433a-a3a8-4f9974da1aea/FwgIdJ15YP.json',
      title: 'أبحث عن التدريب المفضل من بين اكبر الشركات المصرية ',
      body: 'يوفر لك التطبيق المزيد من الشركات والتدريبات الحصرية في كافة المجالات المختلفة',
    ),
    BoardingModel(
      lottieJson:
      'https://lottie.host/8b926273-6cc0-433a-a3a8-4f9974da1aea/FwgIdJ15YP.json',
      title: 'أذهب الي تسجيل الدخول الأن وأحصل علي التدريب المناسب لك',
      body: 'بعد تسجيل الدخول سيظهر امامك كل الشركات ومجالات مختلفة في كافة التخصصات المتاحة',
    ),
  ];

  var boardController = PageController();
  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        actions: [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: boardController,
                onPageChanged: (int index) {
                  if (index == boarding.length - 1) {
                    setState(() {
                      isLast = true;
                      print('last');
                    });
                  } else {
                    setState(() {
                      isLast = false;
                      print('Not last');
                    });
                  }
                },
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) =>
                    buildBoardingItem(boarding[index]),
                itemCount: boarding.length,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SmoothPageIndicator(
                  controller: boardController,
                  count: boarding.length,
                  effect: ExpandingDotsEffect(
                    activeDotColor: Colors.teal,
                    dotColor: Colors.black,
                    dotHeight: 10,
                    expansionFactor: 4,
                    dotWidth: 10,
                    spacing: 5.0,
                  ),
                ),
                Spacer(),
                Center(
                  child: FloatingActionButton(
                    onPressed: () {
                      if (isLast) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OnBoardingScreen(),
                          ),
                        );
                      } else {
                        boardController.nextPage(
                          duration: Duration(milliseconds: 750),
                          curve: Curves.fastLinearToSlowEaseIn,
                        );
                      }
                    },
                    child: Icon(
                      Icons.arrow_forward_ios,

                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );

  }

  Widget buildBoardingItem(BoardingModel model) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        child: Lottie.network(
          model.lottieJson,
        ),
      ),
      SizedBox(height: 30),
      Text(
        '${model.title}',
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 30),
      Text(
        '${model.body}',
        style: TextStyle(
          fontSize: 14.0,
        ),
      ),
    ],
  );
  onTapBtnArrowLeft(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onboardindScreenOne,
    );

  }

}
