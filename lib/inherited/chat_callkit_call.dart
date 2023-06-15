import '../chat_callkit_define.dart';

class ChatCallKitCall {
  ChatCallKitCall({
    required this.callId,
    required this.callType,
    required this.isCaller,
    required this.channel,
    this.remoteUserAccount,
    Map<int, String>? allUserAccounts,
    this.remoteCallDevId,
    this.agoraUid,
    this.ext,
  }) : allUserAccounts = allUserAccounts ?? {};

  final String callId;
  final String? remoteUserAccount;
  final ChatCallKitCallType callType;
  final String channel;
  final bool isCaller;
  final String? remoteCallDevId;
  final int? agoraUid;
  Map<int, String> allUserAccounts;
  final Map<String, String>? ext;

  ChatCallKitCall copyWith({
    String? callId,
    String? remoteUserAccount,
    String? remoteCallDevId,
    ChatCallKitCallType? callType,
    bool? isCaller,
    int? agoraUid,
    String? channel,
    Map<String, String>? ext,
  }) {
    return ChatCallKitCall(
      callId: callId ?? this.callId,
      remoteUserAccount: remoteUserAccount ?? this.remoteUserAccount,
      remoteCallDevId: remoteCallDevId ?? this.remoteCallDevId,
      callType: callType ?? this.callType,
      isCaller: isCaller ?? this.isCaller,
      agoraUid: agoraUid ?? this.agoraUid,
      allUserAccounts: allUserAccounts,
      channel: channel ?? this.channel,
      ext: ext ?? this.ext,
    );
  }
}
