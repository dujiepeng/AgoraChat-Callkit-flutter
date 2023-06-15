import 'dart:math';

class ChatCallKitTools {
  static String get randomStr {
    return "flutter_${Random().nextInt(99999999).toString()}";
  }
}
