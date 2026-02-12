# Airplay Button

A simple Flutter widget that displays a native iOS AirPlay route picker button for casting audio from your app to available AirPlay devices. On iOS, this embeds the system AVRoutePickerView for seamless audio routing.

On non-iOS platforms, the widget renders nothing.

Ideal for apps that use AVPlayer-based audio (e.g., via [just_audio](https://pub.dev/packages/just_audio)) and want to offer users an intuitive way to cast audio via AirPlay.

## Usage

Simply use the `AirPlayButton` widget in your code to display the button.
You can pass it a custom size and colors—parameters are all optional.

```dart
import 'package:airplay_button/air_play_button.dart';

AirPlayButton(
  size: 46, // default
  tintColor: const Color(0xFF007AFF), // Apple's standard light blue
  activeTintColor: const Color(0xFF0040DD), // deeper blue to indicate active state
)
```

## Credits

Inspired by [flutter_to_airplay](https://pub.dev/packages/flutter_to_airplay)
