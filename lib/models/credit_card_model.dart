class CreditCardModel {
  int? id;
  String? name;
  String? cardNumber;
  String? expDate;
  String? icon;


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['cardNumber'] = cardNumber;
    data['expDate'] = expDate;
    data['icon'] = icon;
    return data;
  }
}
