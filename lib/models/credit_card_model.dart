class CreditCardModel {


  CreditCardModel(this.name, this.cardNumber, this.expDate, this.icon);

  CreditCardModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    cardNumber = json['cardNumber'];
    expDate = json['expDate'];
    icon = json['icon'];
  }

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
