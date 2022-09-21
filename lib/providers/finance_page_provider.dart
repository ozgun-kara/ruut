<<<<<<< HEAD
=======
import 'package:flutter/material.dart';

class FinancePageProvider with ChangeNotifier {
  int selectedCreditCard = 0;
  int selectedPromotionCode = 0;

  void updateCreditCardValue(int cardIndex) {
    selectedCreditCard = cardIndex;
    notifyListeners();
  }


  
}
>>>>>>> parent of f4479b7 (Update finance_page_provider.dart)
