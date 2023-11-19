class CreditCardModel {
  int? id;
  String? name;
  String? cardNumber;
  String? expDate;
  String? icon;

  CreditCardModel(this.name, this.cardNumber, this.expDate, this.icon);

  CreditCardModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    cardNumber = json['cardNumber'];
    expDate = json['expDate'];
    icon = json['icon'];
  }

}
