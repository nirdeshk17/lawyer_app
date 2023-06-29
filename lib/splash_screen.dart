import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:untitled10/screens/Registration_screen/login_page.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  void navigateToHome() async {
    await Future.delayed(Duration(seconds: 3));
    // Optional delay for splash screen visibility
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CachedNetworkImage(
          imageUrl: 'https://thumbs.dreamstime.com/b/law-firm-logo-icon-design-template-vector-law-firm-logo-icon-design-template-vector-symbol-lawyer-business-element-justice-171344440.jpg',
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
          fadeInDuration: Duration(milliseconds: 500),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
