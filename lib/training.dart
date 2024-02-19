

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:prosoccer/ads_manager.dart';

import 'package:webview_flutter/webview_flutter.dart';

class TrainingDart extends StatefulWidget {
  const TrainingDart({super.key, required this.id});

  final String id;

  @override
  State<TrainingDart> createState() => _TrainingDartState();
}

class _TrainingDartState extends State<TrainingDart> {
  late final String id = widget.id;
  late final WebViewController _controller;
  BannerAd? _banner;
  @override
  void initState() {
    super.initState();

    // TODO: implement initState
    super.initState();
    _banner = BannerAd(
      size: AdSize.fullBanner,
      adUnitId: AdsManager.bannerAdUnitId!,
      listener: AdsManager.bannerAdListener,
      request: const AdRequest(),
    )..load();

    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://www.youtube.com/embed/${widget.id}'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TRAINING GROUNDS'),
      ),
      body: Center(
        child: WebViewWidget(controller: _controller),
      ),
      bottomNavigationBar: _banner ==null
           ?Container()
          :Container(
         margin: const EdgeInsets.only(bottom: 12),
         height: 52,
          child: AdWidget(ad: _banner!),
    )
    );
  }
}

