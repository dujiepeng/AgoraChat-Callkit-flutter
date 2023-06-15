import 'chat_callkit_define.dart';

/// Agora chat callkit error.
class ChatCallKitError implements Exception {
  factory ChatCallKitError.process(int code, String desc) {
    return ChatCallKitError._(ChatCallKitErrorType.process, code, desc);
  }

  factory ChatCallKitError.im(int code, String desc) {
    return ChatCallKitError._(ChatCallKitErrorType.im, code, desc);
  }

  factory ChatCallKitError.rtc(int code, String desc) {
    return ChatCallKitError._(ChatCallKitErrorType.rtc, code, desc);
  }

  ChatCallKitError._(this.type, this.code, this.errDescription);
  final ChatCallKitErrorType type;
  final int code;
  final String errDescription;
}
