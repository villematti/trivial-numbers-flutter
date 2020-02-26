import 'dart:io';

String fixture(String name) {
  String jsonString;
  try {
    jsonString = File('test/fixtures/$name').readAsStringSync();
  } catch (e) {
    jsonString = File('../test/fixtures/$name').readAsStringSync();
  }
  return jsonString;
}
