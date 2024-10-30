import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {

  final WebViewController _webViewController = WebViewController()
  ..loadRequest(Uri.parse('https://blog.codefactory.ai'))
  ..setJavaScriptMode(JavaScriptMode.unrestricted);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar : AppBar(
          backgroundColor:  Colors.orange,
          title : const Text('Code Factory'),
          centerTitle: true,

          actions: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
              _webViewController.loadRequest(Uri.parse('https://blog.codefactory.ai'));},

            ),
          ],
        ),

        body: WebViewWidget(controller: _webViewController));
  }
}
