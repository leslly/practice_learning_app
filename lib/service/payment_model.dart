class PaymentModel {
  final String type;
  final String name;
  final String number;
  final String expirationDate;

   PaymentModel({
    required this.name,
    required this.number,
    required this.expirationDate,
    required this.type,
});
  
  factory PaymentModel.fromMap(Map<String, dynamic> json) => PaymentModel(
      name: json['name'],
      number: json['number'],
      expirationDate: json['expirationDate'],
      type: json['type'],
  );

  Map<String, dynamic> toMap(){
    return {
      'name' : name,
      'number' : number,
      'expirationDate' : expirationDate,
      'type' : type,
    };
  }

}