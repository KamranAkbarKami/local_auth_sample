# local_auth_sample

This example will help in authenticating user with Face-Id and Finger-Id.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
=============================================================
=>Instruction<=
1: Add local_auth Dependency by using this command=> flutter pub add local_auth
2: Import this line to user local auth features=> import 'package:local_auth/local_auth.dart';
=============================================================

=> Change Android MainActivity.java file to this import
import io.flutter.embedding.android.FlutterFragmentActivity;

public class MainActivity extends FlutterFragmentActivity {}

==============================================================

=> MainActivity.kt:

import io.flutter.embedding.android.FlutterFragmentActivity class MainActivity:
FlutterFragmentActivity() {}

==============================================================

                ======>Native Permission<======

=> AndroidManifest.xml
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
package="com.example.app">
<uses-permission android:name="android.permission.USE_BIOMETRIC"/>
<manifest>

=> Info.plist
<key>NSFaceIDUsageDescription</key>
<string>This will help us to use Face Id in iOS</string>

==============================================================