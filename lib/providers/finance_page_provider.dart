import 'package:flutter/material.dart';

class FinancePageProvider with ChangeNotifier {



  void updateCreditCardValue(int cardIndex) {
    selectedCreditCard = cardIndex;
    notifyListeners();
  }

  void updatePromotionCodeValue(int codeIndex) {
    selectedPromotionCode = codeIndex;
    notifyListeners();
  }
  
}
