import 'package:meta/meta.dart';

/// message should be null, String or String Function()
void require(final bool value, [final dynamic message]) {
  if (!value) {
    String? m;
    if (message is String?) {
      m = message;
    } else if (message is String Function()) {
      m = message();
    } else {
      throw AssertionError();
    }
    throw SealedException(m);
  }
}

/// SealedException
@immutable
@sealed
class SealedException {
  final String? message;
  final Object? cause;

  const SealedException([this.message, this.cause]);

  @override
  String toString() {
    var s = 'SealedException';

    if (message == null) {
      s = '$s(unknown';
    } else {
      s = '$s($message';
    }

    if (cause != null) {
      s = '$s, cause=$cause';
    }

    s = '$s)';

    return s;
  }
}
