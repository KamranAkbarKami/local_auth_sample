//ignore_for_file:prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuthFingerPrintApi {
  static final _auth = LocalAuthentication();

  static Future<bool> hasBiometrics() async {
    //This method will tell us if the device supports the Fingerprint
    try {
      return await _auth.canCheckBiometrics;
    } on PlatformException catch (e) {
      log(e.code.toString());
      return false;
    }
  }

  static Future<List<BiometricType>> getBiometrics() async {
    try {
      return await _auth.getAvailableBiometrics();
    } on PlatformException catch (e) {
      log(e.code.toString());
      return <BiometricType>[];
    }
  }

  static Future<bool> authenticate() async {
    //check if the device supports the biometric
    final isAvailable = await hasBiometrics();
    if (!isAvailable) return false;

    try {
      return await _auth.authenticate(
        options: AuthenticationOptions(
          // biometricOnly: true,
          biometricOnly: false,
          useErrorDialogs: true,
          stickyAuth: true,
        ),
        localizedReason: 'Scan Fingerprint to Authenticate',


      );
    } on PlatformException catch (e) {
      log(e.code.toString());
      return false;
    }
  }
}
