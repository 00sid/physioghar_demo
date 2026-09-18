enum SessionTabBarEnum {
  requests,
  upcoming,
  completed,
  cancelled;

  String get title {
    switch (this) {
      case SessionTabBarEnum.requests:
        return "Requests";
      case SessionTabBarEnum.upcoming:
        return "Upcoming";
      case SessionTabBarEnum.completed:
        return "Completed";
      case SessionTabBarEnum.cancelled:
        return "Cancelled";
    }
  }
}
