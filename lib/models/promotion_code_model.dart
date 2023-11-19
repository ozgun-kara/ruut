class PromotionCodeModel {


  PromotionCodeModel(
      this.name, this.codeNumber, this.expDate, this.usesLeft, this.worth);

  PromotionCodeModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    codeNumber = json['codeNumber'];
    expDate = json['expDate'];
    usesLeft = json['usesLeft'];
    worth = json['worth'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['codeNumber'] = codeNumber;
    data['expDate'] = expDate;
    data['usesLeft'] = usesLeft;
    data['worth'] = worth;
    return data;
  }
}
