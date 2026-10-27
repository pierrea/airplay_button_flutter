import Flutter
import UIKit

public class AirplayButtonPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    registrar.register(
        AirPlayRoutePickerViewFactory(),
        withId: "airplay_route_picker",
        gestureRecognizersBlockingPolicy: FlutterPlatformViewGestureRecognizersBlockingPolicy(rawValue: 0))
  }
}
