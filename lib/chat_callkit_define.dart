import 'package:agora_chat_callkit/models/chat_callkit_user_mapper.dart';

/// Returns a Map where key is agoraToken and value is agoraUid
typedef RtcTokenHandler = Future<Map<String, int>> Function(
    String channel, String agoraAppId);

/// Returns a ChatCallKitUserMapper, See [ChatCallKitUserMapper]
typedef UserMapperHandler = Future<ChatCallKitUserMapper?> Function(
    String channel, int agoraUid);

/// Call type
enum ChatCallKitCallType {
  audio_1v1,
  video_1v1,
  multi,
}

/// End of call cause
enum ChatCallKitCallEndReason {
  hangup,
  cancel,
  remoteCancel,
  refuse,
  busy,
  remoteNoResponse,
  handleOnOtherDevice,
  err,
}

/// Call error type
enum ChatCallKitErrorType {
  process,
  rtc,
  im,
}

/// Call error code
class ChatCallKitErrorProcessCode {
  static int general = 1;
  static int invalidParam = 100;
  static int busy = 101;
  static int fetchTokenFail = 102;
}
