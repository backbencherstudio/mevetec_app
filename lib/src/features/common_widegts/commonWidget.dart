import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'custom_app_bar/custom_app_bar.dart';

class CommonWidget {
  static Widget appBar({String? title, String? img,String? icon, void Function()? onTap}) =>
      CustomAppBar(title: title, img: img, onTap: onTap , icon: icon,);
}
