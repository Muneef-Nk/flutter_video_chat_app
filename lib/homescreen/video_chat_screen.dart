import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_video_conference/zego_uikit_prebuilt_video_conference.dart';

class VideoChatScreen extends StatelessWidget {
  final String conference_id;
  final String user_id;
  const VideoChatScreen(
      {super.key, required this.conference_id, required this.user_id});

  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltVideoConference(
      appID: 2083099202,
      appSign:
          '7ed184372af1b279080244bea9d6437dd6f51aab01ceab91e149448d4c6b90c3',
      conferenceID: conference_id,
      config: ZegoUIKitPrebuiltVideoConferenceConfig(
        turnOnCameraWhenJoining: false,
        turnOnMicrophoneWhenJoining: false,
      ),
      userID: user_id,
      userName: "user$user_id",
    );
  }
}
