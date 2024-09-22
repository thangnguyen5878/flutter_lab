import 'package:version/version.dart';

void main() {
  sum(1, 2);
  print('End');
}

void sum(int num1, int num2) {
  final int sum = num1 + num2;
  print('$sum');
  const String string = '';
  final Version verion = Version.parse(string);
  print(verion);

  // try {
  //   Version verion = Version.parse(string);
  //   print(verion);
  // } catch (e) {
  //   print(e.toString());
  // }
}