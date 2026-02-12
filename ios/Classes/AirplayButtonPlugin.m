#import "AirplayButtonPlugin.h"
#if __has_include(<airplay_button/airplay_button-Swift.h>)
#import <airplay_button/airplay_button-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "airplay_button-Swift.h"
#endif

@implementation AirplayButtonPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAirplayButtonPlugin registerWithRegistrar:registrar];
}
@end