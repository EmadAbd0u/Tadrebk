import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function? onSubmit,
  Function? onChanged,
  Function? onTap,
  bool isPassword = false,
  required String? Function(String?) validate,
  required String label,
  IconData? prefix,
  IconData? suffix,
  Function? suffixPressed,
  bool isClickable = true,

}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onFieldSubmitted: onSubmit as void Function(String)?,
      onChanged: onChanged as void Function(String)?,
      enabled: isClickable,
      onTap: onTap as void Function()?,
      validator: validate,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        labelText: label,
        prefixIcon: prefix != null ? Icon(prefix) : null, // إزالة الأيقونة
        suffixIcon: suffix != null
            ? IconButton(
          onPressed: suffixPressed as void Function()?,
          icon: Icon(suffix),
        )
            : null,
        contentPadding: const EdgeInsets.only(top: 20.0, bottom: 20.0, left: 10.0, right: 0.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
