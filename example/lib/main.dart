import 'package:flutter/material.dart';
import 'package:qrcode_flutter/qrcode_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  QRCaptureController _controller = QRCaptureController();

  bool _isTorchOn = false;

  String _captureText = '';

  @override
  void initState() {
    super.initState();

    _controller.onCapture((data) {
      print('$data');
      setState(() {
        _controller.pause();
        _captureText = data;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('scan'),
          actions: <Widget>[],
        ),
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: 300,
              height: 300,
              child: QRCaptureView(
                controller: _controller,
              ),
            ),
            SafeArea(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: _buildToolBar(),
              ),
            ),
            Container(
              child: Text('$_captureText'),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildToolBar() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          onPressed: () {
            _controller.pause();
          },
          child: Text('pause'),
        ),
        FlatButton(
          onPressed: () {
            if (_isTorchOn) {
              _controller.torchMode = CaptureTorchMode.off;
            } else {
              _controller.torchMode = CaptureTorchMode.on;
            }
            _isTorchOn = !_isTorchOn;
          },
          child: Text('torch'),
        ),
        FlatButton(
          onPressed: () {
            _controller.resume();
          },
          child: Text('resume'),
        ),
      ],
    );
  }
}
