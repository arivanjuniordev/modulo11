import 'package:modulo11/src/errors/failure_impl.dart';

class Module11 {
  static int verifyDigit(String key) {
    if (key.length < 43) {
      throw FailureImpl('the key must contain 43 characters.');
    }

    const multipliers = '4329876543298765432987654329876543298765432';

    List<int> values = [];

    for (int i = 0; i < 43; i++) {
      var result = int.parse((key[i])) * int.parse(multipliers[i]);
      values.add(result);
    }

    var rest = values.reduce((value, element) => value + element) % 11;
    if (rest < 2) {
      return 0;
    }
    return 11 - rest;
  }
}
