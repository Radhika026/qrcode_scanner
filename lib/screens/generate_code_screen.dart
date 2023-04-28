import 'package:flutter/material.dart';

class GenerateCodeScanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Container(
          // scan();
          child: Text('Generate QR Code'),
        ),
      ),
    ));
  }
}
