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

  group('DateTime extensions', () {
    test('.beginningOfDay', () {
      final expected = DateTime(now.year, now.month, now.day, 0, 0, 0, 0, 0);

      withClock(Clock.fixed(now), () {
        expect(now.beginningOfDay, equals(expected));
      });
    });

    test('.endOfDay', () {
      final expected = DateTime(
        now.year,
        now.month,
        now.day,
        23,
        59,
        59,
        999,
        999,
      );

      withClock(Clock.fixed(now), () {
        expect(now.endOfDay, equals(expected));
      });
    });

    test('.beginningOfWeek', () {
      final expected = DateTime(now.year, now.month, 15, 0, 0, 0, 0, 0);

      withClock(Clock.fixed(now), () {
        final bow = now.beginningOfWeek;
        expect(bow, equals(expected));
        expect(bow.weekday, equals(DateTime.monday));
      });
    });

    test('.endOfWeek', () {
      final expected = DateTime(
        now.year,
        now.month,
        21,
        23,
        59,
        59,
        999,
        999,
      );

      withClock(Clock.fixed(now), () {
        final eow = now.endOfWeek;
        expect(eow, equals(expected));
        expect(eow.weekday, equals(DateTime.sunday));
      });
    });

    test('.beginningOfMonth', () {
      final expected = DateTime(now.year, now.month, 1, 0, 0, 0, 0, 0);

      withClock(Clock.fixed(now), () {
        expect(now.beginningOfMonth, equals(expected));
      });
    });

    test('.endOfMonth', () {
      final expected = DateTime(
        now.year,
        now.month,
        31,
        23,
        59,
        59,
        999,
        999,
      );

      withClock(Clock.fixed(now), () {
        expect(now.endOfMonth, equals(expected));
      });
    });

    test('.beginningOfYear', () {
      final expected = DateTime(now.year, 1, 1, 0, 0, 0, 0, 0);

      withClock(Clock.fixed(now), () {
        expect(now.beginningOfYear, equals(expected));
      });
    });

    test('.endOfYear', () {
      final expected = DateTime(
        now.year,
        12,
        31,
        23,
        59,
        59,
        999,
        999,
      );

      withClock(Clock.fixed(now), () {
        expect(now.endOfYear, equals(expected));
      });
    });

    test('.tomorrow', () {
      withClock(Clock.fixed(now), () {
        expect(now.tomorrow, equals(now.add(Duration(days: 1))));
      });
    });

    test('.yesterday', () {
      withClock(Clock.fixed(now), () {
        expect(now.yesterday, equals(now.subtract(Duration(days: 1))));
      });
    });
  });
}
