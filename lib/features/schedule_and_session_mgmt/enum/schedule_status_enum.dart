enum ScheduleStatusEnum {
  open,
  booked,
  blocked;

  String get title {
    switch (this) {
      case ScheduleStatusEnum.open:
        return "Open";
      case ScheduleStatusEnum.booked:
        return "Booked";
      case ScheduleStatusEnum.blocked:
        return "Blocked";
    }
  }
}
