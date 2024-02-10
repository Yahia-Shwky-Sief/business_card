import 'package:flutter/material.dart';

double width(BuildContext context) => MediaQuery.of(context).size.width;
double height(BuildContext context) => MediaQuery.of(context).size.height;

class AdaptiveTextSize {
  const AdaptiveTextSize();
  getAdaptiveTextSize(BuildContext context, dynamic value) {
    return (value / 720) * MediaQuery.of(context).size.height;
  }
}
