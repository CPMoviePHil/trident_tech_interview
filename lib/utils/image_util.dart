import 'package:flutter/material.dart';

abstract class ImageUtil {

  static Widget circleUrlImg (String url, {
    double? width = 50,
    double? height = 50,
    double radius = 43,
    BoxFit? fit
  }) => ClipRRect(
    borderRadius: BorderRadius.circular(radius),
    child: Image.network(
      url,
      width: width,
      height: height,
      fit: fit,
      alignment: Alignment.center,
    ),
  );

}