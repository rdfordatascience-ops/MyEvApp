class History {
  final String lastCharge;
  final String vechicleNumber;
  final String placeOfCharge;
  final String chargingStationName;
  final String paymentRecipt;
  final String paymentAmount;
  final String id;
  final DateTime lastServiceDate;


  History({
    required this.lastCharge,
    required this.vechicleNumber,
    required this.placeOfCharge,
    required this.chargingStationName,
    required this.paymentRecipt,
    required this.paymentAmount,
    required this.id,
    required this.lastServiceDate
  });
}