#import "JitsiMeetLocalPlugin.h"
#if __has_include(<jitsi_meet/jitsi_meet-Swift.h>)
#import <jitsi_meet/jitsi_meet-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "jitsi_meet-Swift.h"
#endif

@implementation JitsiMeetLocalPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftJitsiMeetLocalPlugin registerWithRegistrar:registrar];
}
@end
