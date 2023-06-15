import 'package:flutter/material.dart';

import '../inherited/chat_callkit_manager_impl.dart';

class ChatCallKit extends StatefulWidget {
  const ChatCallKit({
    required this.agoraAppId,
    required this.child,
    this.timeoutDuration = const Duration(seconds: 30),
    super.key,
  });
  final String agoraAppId;
  final Widget child;

  final Duration timeoutDuration;

  @override
  State<ChatCallKit> createState() => ChatCallKitState();

  static ChatCallKitState of(BuildContext context) {
    ChatCallKitState? state;
    state = context.findAncestorStateOfType<ChatCallKitState>();
    assert(
      state != null,
      'You must have a ChatCallKit widget at the top of you widget tree',
    );

    return state!;
  }
}

class ChatCallKitState extends State<ChatCallKit> {
  @override
  void initState() {
    ChatCallKitManagerImpl.instance.agoraAppId = widget.agoraAppId;
    ChatCallKitManagerImpl.instance.callTimeout = widget.timeoutDuration;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
