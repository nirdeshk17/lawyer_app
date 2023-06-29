import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled10/screens/Registration_screen/login_page.dart';
import 'package:untitled10/screens/Registration_screen/otp_screen.dart';
import 'package:untitled10/screens/Registration_screen/registration_page.dart';

FirebaseAuth _auth = FirebaseAuth.instance;

class OtpScreenController extends ChangeNotifier{
  TextEditingController mobileController = TextEditingController();
  String verificationID = "";
  String otpCode = "";
void onLoginClicked(context)async{
  await _auth.verifyPhoneNumber(
      phoneNumber: "+91${mobileController.text}",
      verificationCompleted: (phoneAuthCredential) async {},
      verificationFailed: (verificationFailed) {

      },
      codeSent: (verificationID, resendingToken) async {
        LoginScreen.SHOW_OTP_FORM_WIDGET;
        this.verificationID = verificationID;
      },
      codeAutoRetrievalTimeout: (verificationID) async {});
  Navigator.push(context, MaterialPageRoute(builder: (context)=>OTP_Field()));
}

  void onOtpSubmitPressed(context) {
    onCodeVerification(context);
  }
  void onOtpEntered(value) {
    otpCode = value;
    notifyListeners();
  }

  Future<void> onCodeVerification(context) async {
    AuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
        verificationId: verificationID, smsCode: otpCode);
    signInWithPhoneAuthCred(phoneAuthCredential, context);
  }

  void signInWithPhoneAuthCred(
      AuthCredential phoneAuthCredential, context) async {
    try {
      final authCred = await _auth.signInWithCredential(phoneAuthCredential);
      if (authCred.user != null) {
        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>LawyerRegistrationForm()));
      } else {
        // showOtpErrorMsg();
        // notifyListeners();
        // // Utils.showPrimarySnackbar(context,
        // //     "The verification code from SMS/TOTP is invalid. Please check and enter the correct verification code again",
        // //     type: SnackType.error);
      }
    } on FirebaseAuthException catch (e) {
      // print("888");
      // showOtpErrorMsg();
      // print("888");
      // Utils.showPrimarySnackbar(context, "e.message", type: SnackType.error);
    }
  }

}