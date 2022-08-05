//ignore_for_file:prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:local_auth_sample/face_id/screen/face_page.dart';
import 'package:local_auth_sample/finger_id/screen/fingerprint_page.dart';

class LocalAuthScreenSelection extends StatelessWidget {
  const LocalAuthScreenSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width * 1, 60)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FingerprintPage()));
                },
                child: Text("Finger ID")),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width * 1, 60)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FacePage()));
                },
                child: Text("Face ID")),
          ],
        ),
      ),
    );
  }
}
