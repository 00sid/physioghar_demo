import 'package:flutter/material.dart';

enum HomeNavEnum {
  dash,
  schedule,
  patients,
  account;

  String get title {
    switch (this) {
      case HomeNavEnum.dash:
        return "Dashboard";
      case HomeNavEnum.schedule:
        return "Schedule";
      case HomeNavEnum.patients:
        return "Patients";
      case HomeNavEnum.account:
        return "Account";
    }
  }

  IconData get icon {
    switch (this) {
      case HomeNavEnum.dash:
        return Icons.home;
      case HomeNavEnum.schedule:
        return Icons.calendar_month;
      case HomeNavEnum.patients:
        return Icons.people;
      case HomeNavEnum.account:
        return Icons.person;
    }
  }
}
