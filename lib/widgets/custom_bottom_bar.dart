import 'package:emad_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgGroup3,
      activeIcon: ImageConstant.imgGroup3,
      title: "lbl_home".en,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGroup1,
      activeIcon: ImageConstant.imgGroup1,
      title: "lbl_notificattion".en,
      type: BottomBarEnum.Notificattion,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGroup87,
      activeIcon: ImageConstant.imgGroup87,
      title: "lbl_chat_bot".en,
      type: BottomBarEnum.Chatbot,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGroup100,
      activeIcon: ImageConstant.imgGroup100,
      title: "lbl_setting".en,
      type: BottomBarEnum.Setting,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74.v,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.blueGray900,
            theme.colorScheme.primary,
          ],
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  color: appTheme.blueGray300,
                ),
                Text(
                  bottomMenuList[index].title ?? "",
                  style: theme.textTheme.labelMedium!.copyWith(
                    color: appTheme.blueGray300,
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].activeIcon,
                  height: 29.v,
                  width: 30.h,
                  color: theme.colorScheme.onPrimary.withOpacity(1),
                ),
                Text(
                  bottomMenuList[index].title ?? "",
                  style: CustomTextStyles.labelMediumOnPrimary.copyWith(
                    color: theme.colorScheme.onPrimary.withOpacity(1),
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Notificattion,
  Chatbot,
  Setting,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
