import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewDemo extends StatelessWidget {
  const WebviewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: WebView(
          initialUrl: 'https://www.uber.com/in/en/',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
