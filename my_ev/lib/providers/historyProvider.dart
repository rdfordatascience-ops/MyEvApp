import 'package:flutter/cupertino.dart';
import 'package:my_ev/models/history.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HistoryProvider with ChangeNotifier {
  List<History> _history = [
    new History(lastCharge: "lastCharge", vechicleNumber: "vechicleNumber", placeOfCharge: "placeOfCharge", chargingStationName: "chargingStationName", paymentRecipt: "paymentRecipt", paymentAmount: "paymentAmount", id: "id", lastServiceDate: "lastServiceDate")
  ];

  List<History> get history {
    return [..._history];
  }

  void addHistory(History hist) {
    // final url = Uri.parse('https://evvehiclehackathon.azurewebsites.net/api/Ev/GetUserVehicleHistory?vehicleNumber=KA05JW9165');

    // http.get(url).then((response) {
    //   List<dynamic> data = json.decode(response.body);
    //   print(data);
    //   data.forEach((element) {
    //     print(element);
    //     final String lastCharge = element['LastCharge'];
    //     final String vechicleNumber = element['VehicleNumber'];
    //     final String placeOfCharge = element['PlaceOfCharge'];
    //     final String chargingStationName = element['ChargingStationName'];
    //     final String paymentRecipt = element['PaymentReciept'];
    //     final String paymentAmount = element['PaymentAmount'];
    //     // final String id = element['id'];
    //     final String lastServiceDate = element['LastServiceDate']; 

    //     print(element['LastCharge']);
    //     print(vechicleNumber);
    //     print(placeOfCharge);
    //     print(chargingStationName);
    //     print(paymentRecipt);
    //     print(paymentAmount);
    //     // print(id);
    //     print(lastServiceDate);

    //     _history.add(
    //       new History(lastCharge: lastCharge, vechicleNumber: vechicleNumber, placeOfCharge: placeOfCharge, chargingStationName: chargingStationName, paymentRecipt: paymentRecipt, paymentAmount: paymentAmount, id: "ID", lastServiceDate: lastServiceDate)
    //     );
    //   });
    _history.add(hist);
    notifyListeners();
  }
  
}