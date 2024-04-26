

class FinanceService {

  Future<List<CreditCardModel>> getCreditCardList() async {
    final jsondata = await rootBundle.rootBundle
        .loadString('database/credit_card_list.json');
    final list = json.decode(jsondata) as List<dynamic>;

    return list.map((e) => CreditCardModel.fromJson(e)).toList();
  }

  Future<List<PromotionCodeModel>> getPromotionCodeList() async {
    final jsondata = await rootBundle.rootBundle
        .loadString('database/promotion_code_list.json');
    final list = json.decode(jsondata) as List<dynamic>;

    return list.map((e) => PromotionCodeModel.fromJson(e)).toList();
  }
}
