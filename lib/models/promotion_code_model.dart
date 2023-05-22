class PromotionCodeModel {
  int? id;
  String? name;
  String? codeNumber;
  String? expDate;
  String? usesLeft;
  String? worth;

  PromotionCodeModel(
      this.name, this.codeNumber, this.expDate, this.usesLeft, this.worth);



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
