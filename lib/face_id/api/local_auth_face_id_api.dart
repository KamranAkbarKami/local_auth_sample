//ignore_for_file:prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuthFaceIdApi {
  static final _auth = LocalAuthentication();

//check if the device supports the biometric
  static Future<bool> hasBiometrics() async {
    try {
      return await _auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      log(e.code.toString());
      return false;
    }
  }

  static Future<bool> authenticate() async {
    final isAvailable = await hasBiometrics();
    if (!isAvailable) return false;

    try {
      return await _auth.authenticate(
        options: AuthenticationOptions(
          // biometricOnly: true,
          biometricOnly: true,
          //Show error dialog
          useErrorDialogs: true,
          // Authenticate dialog sticks even if the app is switched
          stickyAuth: true,
        ),
        authMessages: [],
        //This message is displayed while authenticating
        localizedReason: 'Scan Face to Authenticate',
      );
    } on PlatformException catch (e) {
      log(e.code.toString());
      return false;
    }
  }
}
