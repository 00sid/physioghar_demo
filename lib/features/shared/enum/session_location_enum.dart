import 'package:flutter/material.dart';

enum SessionLocationEnum {
  home,
  clinic;

  String get title {
    switch (this) {
      case SessionLocationEnum.home:
        return "Home Visit";
      case SessionLocationEnum.clinic:
        return "Clinic";
    }
  }

  IconData get icon {
    switch (this) {
      case SessionLocationEnum.home:
        return Icons.home_outlined;
      case SessionLocationEnum.clinic:
        return Icons.local_hospital_outlined;
    }
  }
}
