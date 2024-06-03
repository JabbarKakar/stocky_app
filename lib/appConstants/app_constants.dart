import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AppConstant{
  static String getLongitude = '';
  static String getLatitude = '';
}

extension EmptySpace on num
{
  SizedBox get ht => SizedBox(height:toDouble().h);
  SizedBox get wd => SizedBox(width:toDouble().w);
}