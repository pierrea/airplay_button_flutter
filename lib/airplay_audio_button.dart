import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A button that shows the native iOS AirPlay route picker (AVRoutePickerView).
///
/// On iOS, this embeds the system route picker which, when tapped, presents
/// available AirPlay devices. The audio routing is handled automatically by
/// the system since the app uses AVPlayer (via just_audio) under the hood.
///
/// On non-iOS platforms, this widget renders nothing.
class AirPlayButton extends StatelessWidget {
  /// Size of the button (width and height).
  final double size;

  /// Tint color for the AirPlay icon in its default state.
  final Color tintColor;

  /// Tint color when an AirPlay route is active.
  final Color activeTintColor;

  const AirPlayButton({
    super.key,
    this.size = 46,
    this.tintColor = const Color(0xFFFFCCF2),
    this.activeTintColor = const Color(0xFFEC4899),
  });

  @override
  Widget build(BuildContext context) {
    if (!Platform.isIOS) return const SizedBox.shrink();

    return SizedBox(
      width: size,
      height: size,
      child: UiKitView(
        viewType: 'airplay_route_picker',
        creationParams: {
          'tintColor': tintColor.toARGB32(),
          'activeTintColor': activeTintColor.toARGB32(),
        },
        creationParamsCodec: const StandardMessageCodec(),
      ),
    );
  }
}
