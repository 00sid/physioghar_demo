import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  // Raw values

  int get day => this.day;

  int get month => this.month;

  int get year => this.year;

  // Formatted values

  String get formattedTime => DateFormat('HH:mm').format(this);

  String get formattedTime12Hour => DateFormat('h:mma').format(this);

  String get formattedDate => DateFormat('dd MMM yyyy').format(this);

  String get formattedDay => DateFormat('dd').format(this);

  String get formattedMonth => DateFormat('MM').format(this);

  String get formattedMonthName => DateFormat('MMM').format(this);

  String get formattedYear => DateFormat('yyyy').format(this);

  String get dayName => DateFormat('EEEE').format(this);

  String get shortDayName => DateFormat('EEE').format(this);
}

// date.formattedTime        // 14:00
// date.formattedDate        // 18 Sep 2026
// date.formattedDay         // 18
// date.formattedMonth       // 09
// date.formattedMonthName   // Sep
// date.formattedYear        // 2026
// date.dayName              // Friday
// date.shortDayName         // Fri
