/// Extension methods for getting related dates/times.
extension RelatedDateTimes on DateTime {
  /// The beginning of the date's day.
  DateTime get beginningOfDay => DateTime(year, month, day);

  /// The end of the date's day.
  DateTime get endOfDay => DateTime(year, month, day, 23, 59, 59, 999, 999);

  /// The beginning of the day for the Monday of the date's week.
  DateTime get beginningOfWeek => this
      .subtract(Duration(days: this.weekday - DateTime.monday))
      .beginningOfDay;

  /// The end of the day for the Sunday of the date's week.
  DateTime get endOfWeek =>
      this.add(Duration(days: DateTime.sunday - this.weekday)).endOfDay;

  /// The beginning of the day for the first day of the date's month.
  DateTime get beginningOfMonth => DateTime(year, month, 1);

  /// The end of the day for the last day of the date's month.
  DateTime get endOfMonth {
    var dt = DateTime(year, month + 1, 0);
    return dt.endOfDay;
  }

  /// The beginning of the day for the first day of the date's year.
  DateTime get beginningOfYear => DateTime(year, 1, 1).beginningOfDay;

  /// The end of the day for the last day of the date's year.
  DateTime get endOfYear => DateTime(year, 12, 31).endOfDay;

  /// The same time one day after the date.
  DateTime get tomorrow => this.add(Duration(days: 1));

  /// The same time one day before the date.
  DateTime get yesterday => this.subtract(Duration(days: 1));
}
