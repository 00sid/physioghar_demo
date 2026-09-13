import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension WidgetExt on Widget {
  Widget onPressed(final Function()? onPressed) => GestureDetector(
    onTap: onPressed,
    behavior: HitTestBehavior.opaque,
    child: this,
  );
  Widget pX(double val) => Padding(
    padding: EdgeInsets.symmetric(horizontal: val.spMin),
    child: this,
  );

  Widget pY(double val) => Padding(
    padding: EdgeInsets.symmetric(vertical: val.spMin),
    child: this,
  );

  Widget pXY(double x, double y) => Padding(
    padding: EdgeInsets.symmetric(vertical: y.spMin, horizontal: x.spMin),
    child: this,
  );

  Widget pT(double val) => Padding(
    padding: EdgeInsets.only(top: val.spMin),
    child: this,
  );

  Widget pL(double val) => Padding(
    padding: EdgeInsets.only(left: val.spMin),
    child: this,
  );

  Widget pR(double val) => Padding(
    padding: EdgeInsets.only(right: val.spMin),
    child: this,
  );

  Widget pB(double val) => Padding(
    padding: EdgeInsets.only(bottom: val.spMin),
    child: this,
  );
  Widget pad(double val) =>
      Padding(padding: EdgeInsets.all(val.spMin), child: this);

  Widget toSizedBox({final double? width, final double? height}) => SizedBox(
    key: key,
    width: width?.spMin,
    height: height?.spMin,
    child: Center(child: this),
  );
}
