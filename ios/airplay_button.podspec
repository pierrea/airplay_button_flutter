Pod::Spec.new do |s|
  s.name             = 'airplay_button'
  s.version          = '0.1.0'
  s.summary          = 'Airplay button to cast audio in Flutter'
  s.description      = <<-DESC
A Flutter plugin that displays a native iOS AirPlay route picker button (AVRoutePickerView)
for casting audio to available AirPlay devices.
                       DESC
  s.homepage         = 'https://github.com/pierrea/airplay_button_flutter'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Pierre Alvan' => '' }
  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform         = :ios, '13.0'

  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version    = '5.0'
end
