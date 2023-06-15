#import "JitsiMeetLocalPlugin.h"
#if __has_include(<jitsi_meet_local/jitsi_meet_local-Swift.h>)
#import <jitsi_meet_local/jitsi_meet_local-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "jitsi_meet_local-Swift.h"
#endif

@implementation JitsiMeetLocalPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftJitsiMeetLocalPlugin registerWithRegistrar:registrar];
}
@end
