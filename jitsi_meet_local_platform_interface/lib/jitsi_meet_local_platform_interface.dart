import 'package:jitsi_meet_local_platform_interface/jitsi_meeting_listener.dart';
import 'package:jitsi_meet_local_platform_interface/method_channel_jitsi_meet_local.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'jitsi_meeting_options.dart';
import 'jitsi_meeting_response.dart';

export 'feature_flag.dart';
export 'jitsi_meeting_options.dart';
export 'jitsi_meeting_response.dart';
export 'jitsi_meeting_listener.dart';

abstract class JitsiMeetLocalPlatformInterface extends PlatformInterface {
  JitsiMeetLocalPlatformInterface() : super(token: _token);

  static final Object _token = Object();

  static JitsiMeetLocalPlatformInterface _instance =
      MethodChannelJitsiMeetLocal();

  /// The default instance of [JitsiMeetLocalPlatformInterface] to use.
  ///
  /// Defaults to [MethodChannelJitsiMeetLocal].
  static JitsiMeetLocalPlatformInterface get instance => _instance;

  static set instance(JitsiMeetLocalPlatformInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  /// Joins a meeting based on the [JitsiMeetingOptions] passed in.
  Future<JitsiMeetingResponse> joinMeeting({
    required JitsiMeetingOptions options,
    JitsiMeetingListener? listener,
  }) async {
    throw UnimplementedError('joinMeeting has not been implemented.');
  }

  Future<JitsiMeetingResponse> setAudioMuted(bool isMuted) async {
    throw UnimplementedError('setAudioMuted has not been implemented.');
  }

  Future<JitsiMeetingResponse> hangUp() async {
    throw UnimplementedError('hangUp has not been implemented.');
  }
}
