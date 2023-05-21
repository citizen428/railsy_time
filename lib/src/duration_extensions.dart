import 'package:clock/clock.dart' show clock, agoBy, fromNowBy;

/// Extension methods for relative [DateTime] calculations.
extension DateTimeCalculations on Duration {
  /// Substracts itself from the current time.
  ///
  /// ```dart
  /// Duration(hours: 3).ago.toIso8601String()
  /// // 2023-05-21T10:43:43.658309
  ///
  /// // Using the hours extension from this library
  /// 3.hours.ago.toIso8601String()
  /// // 2023-05-21T10:43:43.658309
  /// ```
  DateTime get ago => clock.agoBy(this);

  /// Adds itself to the current time.
  ///
  /// ```dart
  /// Duration(days: 3).fromNow.toIso8601String()
  /// // 2023-05-24T13:46:05.512294
  ///
  /// // Using the hours extension from this library
  /// 3.hours.fromNow.toIso8601String()
  /// // 2023-05-24T13:46:05.512294
  /// ```
  DateTime get fromNow => clock.fromNowBy(this);
}
