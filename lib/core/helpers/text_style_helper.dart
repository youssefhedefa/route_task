import 'package:flutter/material.dart';
import 'package:route_task/core/helpers/color_helper.dart';

abstract class AppTextStyleHelper{
  static const TextStyle font18Reg = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColorHelper.fontColor,
  );
  static const TextStyle font18RegWithIconColor = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColorHelper.iconsColor,
  );
}