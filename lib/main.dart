import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:deshi_bazaar/app.dart';
import 'package:device_preview/device_preview.dart';

//---------- ENTRY POINT OF FLUTTER APP --------------
void main() {
  /// Add widget bindings
  // FlutterNativeSplash.preserve(widgetsBinding: WidgetsFlutterBinding.ensureInitialized());

  //TODO: Init local storage
  //TODO: Await native splash
  //TODO: Initialize firebase
  //TODO: Initialize Authentication
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MainApp(),
    ),
  );
}
