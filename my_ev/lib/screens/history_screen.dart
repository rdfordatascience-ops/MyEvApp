import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_ev/models/history.dart';
import 'package:intl/intl.dart';

class HistoryScreen extends StatelessWidget {
  static const String routeName = '/mainScreen';

  List<History> chargeHistory = [
    new History(
        lastCharge: "lastCharge",
        vechicleNumber: "vechicleNumber",
        placeOfCharge: "placeOfCharge",
        chargingStationName: "chargingStationName",
        paymentRecipt: "paymentRecipt",
        paymentAmount: "paymentAmount",
        id: "id",
        lastServiceDate: new DateTime(2022)),
    new History(
        lastCharge: "lastCharge",
        vechicleNumber: "vechicleNumber",
        placeOfCharge: "placeOfCharge",
        chargingStationName: "chargingStationName",
        paymentRecipt: "paymentRecipt",
        paymentAmount: "paymentAmount",
        id: "id",
        lastServiceDate: new DateTime(2022)),
    new History(
        lastCharge: "lastCharge",
        vechicleNumber: "vechicleNumber",
        placeOfCharge: "placeOfCharge",
        chargingStationName: "chargingStationName",
        paymentRecipt: "paymentRecipt",
        paymentAmount: "paymentAmount",
        id: "id",
        lastServiceDate: new DateTime(2022)),
    new History(
        lastCharge: "lastCharge",
        vechicleNumber: "vechicleNumber",
        placeOfCharge: "placeOfCharge",
        chargingStationName: "chargingStationName",
        paymentRecipt: "paymentRecipt",
        paymentAmount: "paymentAmount",
        id: "id",
        lastServiceDate: new DateTime(2022)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registeration Screen"),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: chargeHistory.length,
          itemBuilder: (ctx, ind) {
            return Card(
              elevation: 5,
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 3),
              child: ListTile(
                leading: FittedBox(
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Theme.of(context).primaryColorLight,
                    child: Text(
                      chargeHistory[ind].placeOfCharge,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black.withOpacity(0.9),
                      ),
                    ),
                  ),
                ),
                title: Text(
                  chargeHistory[ind].chargingStationName,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
                subtitle: Text(
                  DateFormat.yMMMEd()
                      .add_jm()
                      .format(chargeHistory[ind].lastServiceDate),
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Meta',
                  ),
                ),
                trailing: Text(
                  chargeHistory[ind].paymentAmount,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
