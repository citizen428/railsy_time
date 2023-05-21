A collection of extensions methods for `DateTime`, `Duration`, and `int` to allow
for easier date and time calculations.

## Features

* Turns integers into `Duration` objects.
* Easily get `DateTime` objects in the past or future from a `Duration`.
* Get related dates and times for a `DateTime`.

## Getting started

### Installation

```yaml
# pubspec.yaml
dependencies:
  railsy_time: ^1.0.0 # Check out the latest version
```


## Usage

```dart
import 'package:railsy_time/railsy_time.dart';

3.days.fromNow 
// equal to DateTime.now().add(Duration(days: 3))
14.days.ago.beginningOfWeek
// 00:00:00.000000 on the Monday 2 weeks ago
DateTime.now().endOfYear
// 23:59:59.999999 on December 31st of the date's year
```

## License

MIT License, see the [LICENSE](LICENSE) file for details.
