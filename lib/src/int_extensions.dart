/// Extension methods for turning integers into [Duration] objects.
extension IntegerDurations on int {
  /// Creates a [Duration] for the integer in days.
  ///
  /// ```dart
  /// 3.days == Duration(days: 3)
  /// ```
  Duration get days => Duration(days: this);

  /// Creates a [Duration] for the integer in hours.
  ///
  /// ```dart
  /// 3.hours == Duration(hours: 3)
  /// ```
  Duration get hours => Duration(hours: this);

  /// Creates a [Duration] for the integer in minutes.
  ///
  /// ```dart
  /// 3.minutes == Duration(minutes: 3)
  /// ```
  Duration get minutes => Duration(minutes: this);

  /// Creates a [Duration] for the integer in seconds.
  ///
  /// ```dart
  /// 3.seconds == Duration(seconds: 3)
  /// ```
  Duration get seconds => Duration(seconds: this);

  /// Creates a [Duration] for the integer in milliseconds.
  ///
  /// ```dart
  /// 3.milliseconds == Duration(milliseconds: 3)
  /// ```
  Duration get milliseconds => Duration(milliseconds: this);
}
