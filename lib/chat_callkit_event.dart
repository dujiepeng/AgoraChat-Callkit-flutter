import 'chat_callkit_define.dart';
import 'chat_callkit_error.dart';

/// ChatCallKit event handler.
class ChatCallKitEventHandler {
  /// ChatCallKit event handler.
  ///
  /// Param [onError] Call back when the call fails, See [ChatCallKitError].
  ///
  /// Param [onCallEnd] Call back when the call ends, See [ChatCallKitCallEndReason].
  ///
  /// Param [onReceiveCall] Call back when you receive a call invitation.
  ///
  /// Param [onJoinedChannel] The current user joins the call callback.
  ///
  /// Param [onUserLeaved] Call back when an active user leaves.
  ///
  /// Param [onUserJoined] Callback when a user joins a call.
  ///
  /// Param [onUserMuteAudio] Callback when the peer's mute status changes.
  ///
  /// Param [onUserMuteVideo] Callback when the peer's camera status changes.
  ///
  /// Param [onUserRemoved] Callback when the user rejects the call or the call times out.
  ///
  /// Param [onAnswer] Call back when the call is answered.
  ///
  ChatCallKitEventHandler({
    this.onError,
    this.onCallEnd,
    this.onReceiveCall,
    this.onJoinedChannel,
    this.onUserLeaved,
    this.onUserJoined,
    this.onUserMuteAudio,
    this.onUserMuteVideo,
    this.onUserRemoved,
    this.onAnswer,
  });

  /// Call back when the call fails, See [ChatCallKitError].
  final void Function(ChatCallKitError error)? onError;

  /// Call back when the call ends, See [ChatCallKitCallEndReason].
  final void Function(String? callId, ChatCallKitCallEndReason reason)?
      onCallEnd;

  /// Call back when an active user leaves.
  final void Function(int agoraUid, String? userId)? onUserLeaved;

  /// Callback when a user joins a call.
  final void Function(int agoraUid, String? userId)? onUserJoined;

  /// The current user joins the call callback.
  final void Function(String channel)? onJoinedChannel;

  /// Call back when the call is answered.
  final void Function(String callId)? onAnswer;

  /// Call back when you receive a call invitation.
  final void Function(
    String userId,
    String callId,
    ChatCallKitCallType callType,
    Map<String, String>? ext,
  )? onReceiveCall;

  /// Callback when the peer's mute status changes.
  final void Function(int agoraUid, bool muted)? onUserMuteAudio;

  /// Callback when the peer's camera status changes.
  final void Function(int agoraUid, bool muted)? onUserMuteVideo;

  /// Callback when the user rejects the call or the call times out.
  final void Function(
    String callId,
    String userId,
    ChatCallKitCallEndReason reason,
  )? onUserRemoved;
}
