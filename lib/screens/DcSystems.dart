// TODO Implement this library.
import 'package:dc_system/constants/theme.dart';
import 'package:dc_system/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DcSystems extends StatefulWidget {
  const DcSystems({Key? key}) : super(key: key);

  @override
  _DcSystemsState createState() => _DcSystemsState();
}


class _DcSystemsState extends State<DcSystems> {
  String? game;
  String gameUrl="https://diamondcanopy.co.ke/dcsystem/admin/authentication";
  late WebViewController controller;

  

  
  @override
  void initState() {
    super.initState();

    controller = WebViewController()
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
  ..loadRequest(Uri.parse(gameUrl));
    
  }

@override
  void didChangeDependencies() {
    super.didChangeDependencies();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DcSystemColors.bgColorScreen,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(kTextTabBarHeight),
            child: CustomAppBar()),
        body: Container(
          color: DcSystemColors.bgColorScreen,
          child: WebViewWidget(
            controller: controller,
          ),
        ));
  }
}
