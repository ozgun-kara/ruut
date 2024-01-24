import 'package:flutter/material.dart';

class FinancePageProvider with ChangeNotifier {


  void updatePromotionCodeValue(int codeIndex) {
    selectedPromotionCode = codeIndex;
    notifyListeners();
  }
}
