import 'package:railsy_time/railsy_time.dart';

void main() {
  var dt = 29.days.fromNow.endOfMonth;
  print('End of next month: ${dt.toIso8601String()}');

  dt = 365.days.ago.beginningOfYear;
  print('Beginning of last year: ${dt.toIso8601String()}');
}
