
import 'package:flutter/material.dart';

class QRScanScreen extends StatefulWidget {
  @override
  _QRScanScreen createState() => new _QRScanScreen();
}

class _QRScanScreen extends State<QRScanScreen> {
  String barcode = "";

  @override
  initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: Container(
         // scan();
         child: Text('Hey'),
        ),
      ),
    ));
  }
}

// Future scan() async {
//   try {
//     String barcode = await BarcodeScanner.scan();
//     setState(() => this.barcode = barcode);
//   } on PlatformException catch (e) {
//     if (e.code == BarcodeScanner.CameraAccessDenied) {
//       setState(() {
//         this.barcode = 'The user did not grant the camera permission!';
//       });
//     } else {
//       setState(() => this.barcode = 'Unknown error: $e');
//     }
//   } on FormatException {
//     setState(() => this.barcode =
//         'null (User returned using the "back"-button before scanning anything. Result)');
//   } catch (e) {
//     setState(() => this.barcode = 'Unknown error: $e');
//   }
//}
