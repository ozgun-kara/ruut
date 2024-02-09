class PromotionCodeModel {
  int? id;
  String? name;
  String? codeNumber;
  String? expDate;
  String? usesLeft;
  String? worth;

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


}
