enum SessionStatusEnum {
  request,
  upcoming,
  completed,
  cancelled;

  String get title {
    switch (this) {
      case SessionStatusEnum.request:
        return "Request";

      case SessionStatusEnum.upcoming:
        return "Upcoming";
      case SessionStatusEnum.completed:
        return "Completed";
      case SessionStatusEnum.cancelled:
        return "Cancelled";
    }
  }
}
