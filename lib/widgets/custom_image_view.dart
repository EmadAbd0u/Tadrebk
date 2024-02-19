// ignore_for_file: must_be_immutable
// تجاهل التحذيرات حول عدم القدرة على تغيير الكائن بعد إنشائه

import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomImageView extends StatelessWidget {

  // [imagePath] هو مسار الصورة الذي سيتم عرضه

  String? imagePath;
  double? height;
  double? width;
  Color? color;
  BoxFit? fit;
  final String placeHolder;
  Alignment? alignment;
  VoidCallback? onTap;
  EdgeInsetsGeometry? margin;
  BorderRadius? radius;
  BoxBorder? border;

  // يُعد [CustomImageView] ويدجيتًا يُستخدم لعرض أي نوع من الصور
  // يعرض الصورة البديلة إذا لم يتم العثور على الصورة عند استخدام صورة الشبكة

  CustomImageView({
    this.imagePath,
    this.height,
    this.width,
    this.color,
    this.fit,
    this.alignment,
    this.onTap,
    this.radius,
    this.margin,
    this.border,
    this.placeHolder = 'assets/images/image_not_found.png',
  });

  @override
  Widget build(BuildContext context) {
    // إذا تم تحديد موقع للصورة، قم بمحاذاة الصورة حسب الموقع المحدد
    return alignment != null
        ? Align(
      alignment: alignment!,
      child: _buildWidget(), // بناء هيكل الصورة
    )
        : _buildWidget(); // بناء هيكل الصورة
  }

  // بناء هيكل الصورة
  Widget _buildWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero, // تحديد هامش للصورة
      child: InkWell(
        onTap: onTap, // إضافة إمكانية النقر على الصورة
        child: _buildCircleImage(), // بناء الصورة مع نصف القطر
      ),
    );
  }

  // بناء الصورة مع نصف قطر الزاوية

  _buildCircleImage() {
    if (radius != null) {
      return ClipRRect(
        borderRadius: radius ?? BorderRadius.zero,
        child: _buildImageWithBorder(), // بناء الصورة مع الحدود
      );
    } else {
      return _buildImageWithBorder(); // بناء الصورة مع الحدود
    }
  }


  // بناء الصورة مع الحدود ونمط حدود محدد
  _buildImageWithBorder() {
    if (border != null) {
      return Container(
        decoration: BoxDecoration(
          border: border,
          borderRadius: radius,
        ),
        child: _buildImageView(), // بناء عرض الصورة النهائي
      );
    } else {
      return _buildImageView(); // بناء عرض الصورة النهائي
    }
  }

  // بناء عرض الصورة النهائي استنادًا إلى نوع الصورة والإعدادات
  Widget _buildImageView() {
    // التحقق من نوع الصورة وبناء ويدجيت الصورة المناسب
    if (imagePath != null) {
      switch (imagePath!.imageType) {
      // في حالة كانت الصورة من نوع SVG، استخدم Flutter SVG لعرضها
        case ImageType.svg:
          return Container(
            height: height,
            width: width,
            child: SvgPicture.asset(
              imagePath!,
              height: height,
              width: width,
              fit: fit ?? BoxFit.contain,
              colorFilter: ColorFilter.mode(
                  this.color ?? Colors.transparent, BlendMode.srcIn),
            ),
          );

      // في حالة كانت الصورة ملفًا، استخدم Image.file لعرضها

        case ImageType.file:
          return Image.file(
            File(imagePath!),
            height: height,
            width: width,
            fit: fit ?? BoxFit.cover,
            color: color,
          );
      // في حالة كانت الصورة من الشبكة، استخدم CachedNetworkImage لعرضها
        case ImageType.network:
          return CachedNetworkImage(
            height: height,
            width: width,
            fit: fit,
            imageUrl: imagePath!,
            color: color,
            placeholder: (context, url) => Container(
              height: 30,
              width: 30,
              child: LinearProgressIndicator(
                color: Colors.grey.shade200,
                backgroundColor: Colors.grey.shade100,
              ),
            ),
            errorWidget: (context, url, error) => Image.asset(
              placeHolder,
              height: height,
              width: width,
              fit: fit ?? BoxFit.cover,
            ),
          );
      // في حالة كانت الصورة PNG أو نوع آخر غير معروف، استخدم Image.asset لعرضها
        case ImageType.png:
        default:
          return Image.asset(
            imagePath!,
            height: height,
            width: width,
            fit: fit ?? BoxFit.cover,
            color: color,
          );
      }
    }
    return SizedBox(); // إذا كان مسار الصورة فارغًا، فلا تقم بعرض أي شيء
  }
}

// امتداد لنوع الصورة
extension ImageTypeExtension on String {
  ImageType get imageType {
    // يحدد نوع الصورة استنادًا إلى الامتداد
    if (this.startsWith('http') || this.startsWith('https')) {
      return ImageType.network;
    } else if (this.endsWith('.svg')) {
      return ImageType.svg;
    } else if (this.startsWith('file://')) {
      return ImageType.file;
    } else {
      return ImageType.png;
    }
  }
}

// تعريف لأنواع الصور المختلفة
enum ImageType { svg, png, network, file, unknown }
