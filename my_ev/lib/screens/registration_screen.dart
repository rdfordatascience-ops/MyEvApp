import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'otp_screen.dart';

class RegisterScreen extends StatelessWidget {
  TextEditingController _vechicleNumberCtrlr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("MyEv"),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.person_add),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            padding: EdgeInsets.all(8.0),
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                
                controller: _vechicleNumberCtrlr,
                decoration: const InputDecoration(
                    hintText: "Enter The Vechicle Number",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  final url = Uri.parse(
                      'https://evvehiclehackathon.azurewebsites.net/api/Ev/AuthenticateVehicle');

                  http.post(url,
                      body: json.encode({
                        'uniqueVehicleNumber':
                            _vechicleNumberCtrlr.text.toUpperCase()
                      }),
                      headers: {
                        "Accept": "application/json",
                        "content-type": "application/json"
                      }).then((value) {
                    print("===================================");
                    print("API Response");
                    print("Status Code : " + value.statusCode.toString());
                    print("OTP: " + value.body);
                    print("===================================");

                    Navigator.of(context).pushNamed(OtPscreen.routeName);
                  });
                },
                child: const Text("Register"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.green.shade400,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    textStyle:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.w200)),
              ),
              Image.asset('assets/images/ec.jpeg')
            ],
          )),
        ));
  }
}
