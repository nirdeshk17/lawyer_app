
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:untitled10/screens/home_screen.dart';

import 'otp_screen.dart';
class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient:LinearGradient(
              begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF8A2387),
                  Color(0xFFE94057),
                  Color(0xFFF27121)
                ])
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80,),
              Image.network("https://image.similarpng.com/very-thumbnail/2021/06/Lawyer-and-Law-Firm-Logo-on-transparent-background-PNG.png",height: 50,width: 50),
              Text("Lawyer",
              style: TextStyle(color: Colors.white,
              fontSize: 20),
              ),
              SizedBox(height: 30,),
              Container(
                height: 480,
                width: 325,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 30,),
                    Text("Hello",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 10,),
                    Text("Please Login to Your Account",
                    style: TextStyle(fontSize: 15,color: Colors.grey),),
                    SizedBox(height: 20,),
                    Container(
                      width: 250,
                      child:IntlPhoneField(
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                        ),
                        initialCountryCode: 'IN',
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        },
                      )
                    ),

                    Padding(padding: EdgeInsets.fromLTRB(20, 20, 40, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                      ],
                    ),
                    ),

                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>OTP_Field()));
                      },
                      child: GestureDetector(
                        child: Container(
                          alignment: Alignment.center,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0xFF8A2387),
                                Color(0xFFE94057),
                                Color(0xFFF27121)
                              ]
                            )
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Text("Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                            fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),

                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                       // Icon(FontAwesomeIcons.facebook,color: Colors.orangeAccent[700],)
                      ],
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
