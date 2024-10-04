// // import 'package:flutter/material.dart';
// // import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
// // import'homepage.dart';
// //
// // class QRScannerPage extends StatefulWidget {
// //   @override
// //   _QRScannerPageState createState() => _QRScannerPageState();
// // }
// //
// // class _QRScannerPageState extends State<QRScannerPage> {
// //
// //   Future<void> scanQRCode() async {
// //     try {
// //       String scanResult = await FlutterBarcodeScanner.scanBarcode(
// //         '#ff6666', // Color of the scan line
// //         'Cancel', // Text for the cancel button
// //         true,     // Show flash icon
// //         ScanMode.QR, // QR or barcode mode
// //       );
// //
// //       if (scanResult != '-1') {
// //         // Navigate to another screen or process the result
// //         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> homepage(),));
// //       }
// //     } catch (e) {
// //       print('Error scanning QR code: $e');
// //     }
// //   }
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     scanQRCode(); // Automatically scan when the screen loads
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: Text('QR Scanner')),
// //       body: Center(child: Text('Scanning...')),
// //     );
// //   }
// // }
// //
// // // class ResultPage extends StatelessWidget {
// // //   final String result;
// // //
// // //   ResultPage({required this.result});
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(title: Text('Scan Result')),
// // //       body: Center(child: Text('Result: $result')),
// // //     );
// // //   }
// // // }
//
//
// import 'package:flutter/material.dart';
// import 'package:qr_flutter/qr_flutter.dart';
//
// class QRCodeGenerator extends StatelessWidget {
//   final String data;
//
//   QRCodeGenerator({required this.data});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Generate QR Code')),
//       body: Center(
//         child: QrImage(
//           data: data,
//           version: QrVersions.auto,
//           size: 200.0,
//         ),
//       ),
//     );
//   }
// }
