#import "AirplayAudioButtonPlugin.h"
#if __has_include(<airplay_audio_button/airplay_audio_button-Swift.h>)
#import <airplay_audio_button/airplay_audio_button-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "airplay_audio_button-Swift.h"
#endif

@implementation AirplayAudioButtonPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAirplayAudioButtonPlugin registerWithRegistrar:registrar];
}
@end