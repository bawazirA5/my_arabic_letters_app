import 'package:flutter/material.dart';
import 'package:my_arabic_letters_app/widgets/w_app_bar.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ViewWebView extends StatefulWidget {
  const ViewWebView({super.key, required this.url});
  final String url;

  @override
  State<ViewWebView> createState() => _ViewWebViewState();
}

class _ViewWebViewState extends State<ViewWebView> {
  // * controller of WebViewWidget
  late WebViewController controller;
  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      // * run javascrip
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      // * take url
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // * appBar
      appBar: const WidgetAppBar(),
      // * body
      body: WebViewWidget(controller: controller),
    );
  }
}
