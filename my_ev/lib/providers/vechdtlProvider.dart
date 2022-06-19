import 'package:flutter/cupertino.dart';
import 'package:my_ev/models/vechicleDetails.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class VechldtlProvider with ChangeNotifier {

  List<String> _dtl = ["100", "4000", "300"];

  List<String> get history {
    return [..._dtl];
  }

  void updateDetails(String lastCharge, String vechicleNumber, String placeOfCharge, String chargingStationName, String paymentRecipt, String paymentAmount){
    // history[0] = batteryHealth;
    // history[1] = currentRange;
    // history[2] = totalOdometer;

    final url = Uri.parse('https://evvehiclehackathon.azurewebsites.net/api/Ev/UpdateVehicleCharge');

    http.post(url, body: json.encode({
      'VehicleNumber': vechicleNumber,
      'LastCharge': lastCharge,
      'LastServiceDate': '',
      'PlaceOfCharge': placeOfCharge,
      'ChargingStationName':chargingStationName,
      'PaymentReciept': paymentRecipt,
      'PaymentAmount': paymentAmount,
    })).then((value) {
      
    });

    notifyListeners();
  }

}