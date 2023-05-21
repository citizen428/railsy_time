import 'package:railsy_time/railsy_time.dart';
import 'package:test/test.dart';

void main() {
  group('Int extensions', () {
    setUp(() {
      // Additional setup goes here.
    });

    test('.days', () {
      expect(3.days, equals(Duration(days: 3)));
    });

    test('.hours', () {
      expect(3.hours, equals(Duration(hours: 3)));
    });

    test('.minutes', () {
      expect(3.minutes, equals(Duration(minutes: 3)));
    });

    test('.seconds', () {
      expect(3.seconds, equals(Duration(seconds: 3)));
    });

    test('.milliseconds', () {
      expect(3.milliseconds, equals(Duration(milliseconds: 3)));
    });
  });
}
