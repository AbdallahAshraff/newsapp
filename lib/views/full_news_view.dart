// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:newsapp/models/article_model.dart';

class FullNews extends StatefulWidget {
  const FullNews({
    Key? key,
    required this.linkurl,
    required this.appbar,
  }) : super(key: key);

  final String linkurl;
  final String appbar;

  @override
  State<FullNews> createState() => _FullNewsState();
}

class _FullNewsState extends State<FullNews> {
  late WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.disabled)
      ..loadRequest(Uri.parse(widget.linkurl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.appbar),),
      body: WebViewWidget(controller: controller),
    );
  }
}
