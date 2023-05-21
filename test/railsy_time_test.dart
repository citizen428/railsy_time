import 'package:railsy_time/railsy_time.dart';
import 'package:test/test.dart';
import 'package:clock/clock.dart';

void main() {
  late DateTime now;

  setUp(() => now = DateTime(2023, 5, 21, 1, 2, 3, 4, 5));

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

  group('Duration extensions', () {
    test('.ago', () {
      withClock(Clock.fixed(now), () {
        expect(3.days.ago, equals(now.subtract(Duration(days: 3))));
      });
    });

    test('.fromNow', () {
      withClock(Clock.fixed(now), () {
        expect(3.days.fromNow, equals(now.add(Duration(days: 3))));
      });
    });
  });
}
