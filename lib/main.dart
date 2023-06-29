import 'package:flutter/material.dart';
import 'package:untitled10/screens/Registration_screen/controller/otp_screen_controller.dart';
import 'package:untitled10/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => OtpScreenController()),
    ],
    child: MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,// Set SplashScreen as the initial route
    );
  }
}
