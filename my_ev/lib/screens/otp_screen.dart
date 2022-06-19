import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_ev/screens/main_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:my_ev/screens/registration_screen.dart';

class OtPscreen extends StatelessWidget {
  static const String routeName = '/otpScreen';
  TextEditingController pin1 = TextEditingController();
  TextEditingController pin2 = TextEditingController();
  TextEditingController pin3 = TextEditingController();
  TextEditingController pin4 = TextEditingController();

  void showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pushNamed('/');
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text(
        "OTP Invalid!",
        style: TextStyle(color: Color.fromARGB(255, 235, 7, 7)),
      ),
      content: Text("Please try again"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MyEv"),
        ),
        body: Container(
          padding: EdgeInsets.all(12.0),
          child: Form(
            
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(child: Column(
                children: [
                  Text("Verification code", 
                  style: TextStyle(fontSize: 30.0),
                  textAlign: TextAlign.left,),
                  SizedBox(height: 5,),
                  Text("Enter the otp sent to your registered mobile number.", 
                  style: TextStyle(fontSize: 12.0),
                  textAlign: TextAlign.left,)
                ],
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      controller: pin1,
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      controller: pin2,
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      controller: pin3,
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      controller: pin4,
                      style: Theme.of(context).textTheme.headline6,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),
                ],
              ),
              RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                    side: BorderSide(color: Color.fromARGB(255, 46, 212, 55))),
                onPressed: () {
                  final url = Uri.parse(
                      'https://evvehiclehackathon.azurewebsites.net/api/Ev/VerifyUser');
        
                  http.post(url,
                      body: json.encode(({
                        'VerificationOtp':
                            (pin1.text + pin2.text + pin3.text + pin4.text),
                        'VehicleNumber': 'KA05JW9165'
                      })),
                      headers: {
                        "Accept": "application/json",
                        "content-type": "application/json"
                      }).then((value) {
        
                        print("=============================");
                        print("API Response:");
                        print("Status code: " + value.statusCode.toString());
                        print("Body: " + value.body);
                        print("=============================");
        
        
                        if (value.statusCode != 200) {
                          showAlertDialog(context);
                          // Navigator.of(context).pushNamed(MainScreen.routeName);
                        } else {
                          Navigator.of(context).pushNamed(MainScreen.routeName);
                        }
                  });
                },
                padding: EdgeInsets.all(10.0),
                color: Colors.lightGreen,
                textColor: Colors.white,
                child: const Text("Validate OTP", style: TextStyle(fontSize: 45)),
              ),
            ],
          )),
        ));
  }
}
