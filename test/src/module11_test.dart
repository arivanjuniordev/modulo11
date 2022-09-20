import 'package:modulo11/src/errors/failure.dart';
import 'package:modulo11/src/module11_core.dart';
import 'package:test/test.dart';

void main() {
  test('Success', () {
    final result =
        Module11.verifyDigit('43171207364617000135550000000120141000120146');

    expect(6, result);
  });

  test('Verify amount characters', () {
    expect(
      () => Module11.verifyDigit('43171207364617000135550000000120141020146'),
      throwsA(isA<Failure>()),
    );
  });
}
