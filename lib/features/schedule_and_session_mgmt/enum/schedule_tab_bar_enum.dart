enum ScheduleTabBarEnum {
  schedule,
  sessions;

  String get title {
    switch (this) {
      case ScheduleTabBarEnum.schedule:
        return "Schedule";
      case ScheduleTabBarEnum.sessions:
        return "Sessions";
    }
  }
}
