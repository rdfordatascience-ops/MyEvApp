import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'otp_screen.dart';

class RegisterScreen extends StatelessWidget {

  TextEditingController _vechicleNumberCtrlr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Registeration Screen"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
              child: Column(
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
              TextButton(
                  onPressed: () => {
                        Navigator.of(context).pushNamed(OtPscreen.routeName),
                      },
                  child: const Text("Register")),
            ],
          )),
        ));
  }
}
