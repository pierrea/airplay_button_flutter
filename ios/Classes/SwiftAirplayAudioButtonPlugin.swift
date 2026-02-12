import Flutter
import UIKit

public class SwiftAirplayButtonPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    registrar.register(
        SharePlatformViewFactory(messenger: registrar.messenger()),
        withId: "airplay_button",
        gestureRecognizersBlockingPolicy: FlutterPlatformViewGestureRecognizersBlockingPolicy(rawValue: 0))
  }
}