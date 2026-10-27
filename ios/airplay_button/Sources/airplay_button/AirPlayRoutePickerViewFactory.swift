import Flutter
import AVKit

class AirPlayRoutePickerViewFactory: NSObject, FlutterPlatformViewFactory {
    func create(
        withFrame frame: CGRect,
        viewIdentifier viewId: Int64,
        arguments args: Any?
    ) -> FlutterPlatformView {
        return AirPlayRoutePickerPlatformView(frame: frame, arguments: args)
    }

    func createArgsCodec() -> (FlutterMessageCodec & NSObjectProtocol) {
        return FlutterStandardMessageCodec.sharedInstance()
    }
}

class AirPlayRoutePickerPlatformView: NSObject, FlutterPlatformView {
    private let routePickerView: AVRoutePickerView

    init(frame: CGRect, arguments args: Any?) {
        routePickerView = AVRoutePickerView(frame: frame)
        super.init()

        // Default styling
        routePickerView.backgroundColor = .clear

        // Apply tint colors from Flutter creation params
        if let params = args as? [String: Any] {
            if let tintColorValue = params["tintColor"] as? Int {
                routePickerView.tintColor = UIColor.fromARGB(tintColorValue)
            }
            if let activeTintValue = params["activeTintColor"] as? Int {
                routePickerView.activeTintColor = UIColor.fromARGB(activeTintValue)
            }
        }
    }

    func view() -> UIView {
        return routePickerView
    }
}

private extension UIColor {
    static func fromARGB(_ value: Int) -> UIColor {
        let a = CGFloat((value >> 24) & 0xFF) / 255.0
        let r = CGFloat((value >> 16) & 0xFF) / 255.0
        let g = CGFloat((value >> 8) & 0xFF) / 255.0
        let b = CGFloat(value & 0xFF) / 255.0
        return UIColor(red: r, green: g, blue: b, alpha: a)
    }
}
