import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;
import 'package:provider/provider.dart';
import 'package:ruut/models/credit_card_model.dart';
import 'package:ruut/models/promotion_code_model.dart';
import 'package:ruut/providers/finance_page_provider.dart';
import 'package:ruut/services/finance_service.dart';

class FinancePage extends StatelessWidget {
  FinancePage({Key? key}) : super(key: key);

  late double deviceWidth;
  late double deviceHeight;

  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF6F6FB),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leadingWidth: 80,
              leading: Builder(
                builder: (context) => IconButton(
                  icon: SvgPicture.asset(
                    'assets/images/ListPlus.svg',
                    width: 26,
                    height: 27,
                  ),
                  onPressed: () {},
                ),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ButtonTheme(
                    minWidth: 98,
                    height: 30,
                    child: MaterialButton(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24),
                              bottomLeft: Radius.circular(24),
                              bottomRight: Radius.circular(24)),
                        ),
                        color: const Color(0xFF01023C),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(
                              'assets/images/Gift.svg',
                              width: 19.63,
                              height: 19.63,
                            ),
                            const Text(
                              'Get \$50',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "Cairo-VariableFont_wght",
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xFF28CB69)),
                            ),
                          ],
                        ),
                        onPressed: () async {}),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Builder(
                      builder: (context) => IconButton(
                        icon: SvgPicture.asset(
                          'assets/images/Bell.svg',
                          width: 18.47,
                          height: 22.4,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),

                ],
              ),
            ),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [

                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Text(
                        "Finance",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Cairo-VariableFont_wght",
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF01023C)),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Text(
                        "Lorem Ipsum Dolor Sit Amed",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Cairo-VariableFont_wght",
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF8C8CB1)),
                      ),
                    ),
                  ],
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Container(
                width: deviceWidth * 0.92,
                height: 60,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: Color(0xFF01023C),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: SvgPicture.asset(
                        'assets/images/Coins.svg',
                        width: 26,
                        height: 27,
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                      child: Text(
                        "Your Balance: ",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Cairo-VariableFont_wght",
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFF6F6FB),
                        ),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text(
                        "\$1,250",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Cairo-VariableFont_wght",
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFF6F6FB),
                        ),
                      ),
                    ),



                  ],
                ),
              ),
            ),

            // CREDIT CARDS PART
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(32, 0, 0, 0),
                  child: Text(
                    "Credit Cards",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Cairo-VariableFont_wght",
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4D4E74),
                    ),
                  ),
                ),

                ButtonTheme(
                  minWidth: 98,
                  height: 30,
                  child: MaterialButton(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24),
                            bottomLeft: Radius.circular(24),
                            bottomRight: Radius.circular(24)),
                      ),
                      color: const Color(0xFFF6F6FB),
                      elevation: 0,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'ADD NEW',
                            style: TextStyle(
                              fontSize: 10,
                              letterSpacing: 1,
                              fontFamily: "Cairo-VariableFont_wght",
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF4D4E74),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: SvgPicture.asset(
                              'assets/images/Plus.svg',
                              width: 8,
                              height: 8,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () async {}),
                ),

              ],
            ),
            FutureBuilder(
              future: FinanceService().getCreditCardList(),
              builder: (context, data) {
                if (data.hasError) {
                  return Center(child: Text("${data.error}"));
                } else if (data.hasData) {
                  var items = data.data as List<CreditCardModel>;

                  return ListView.builder(
                      shrinkWrap: true,
                      itemCount: items == null ? 0 : items.length,
                      itemBuilder: ((context, index) => Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                            child: Material(
                              elevation:
                                  Provider.of<FinancePageProvider>(context)
                                              .selectedCreditCard ==
                                          index
                                      ? 5
                                      : 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                                tileColor:
                                    Provider.of<FinancePageProvider>(context)
                                                .selectedCreditCard ==
                                            index
                                        ? Colors.white
                                        : const Color(0xFFF6F6FB),
                                onTap: () {
                                  Provider.of<FinancePageProvider>(context,
                                          listen: false)
                                      .updateCreditCardValue(index);
                                },
                                contentPadding:
                                    const EdgeInsets.fromLTRB(16, 16, 16, 16),
                                leading: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  child: SvgPicture.asset(
                                    items[index].icon ?? '',
                                    width: 30,
                                    height: 24,
                                  ),
                                ),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 0, 4),
                                      child: Text(
                                        items[index].name ?? '',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontFamily: "Cairo-VariableFont_wght",
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF01023C),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      items[index].cardNumber ?? '',
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontFamily: "Cairo-VariableFont_wght",
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF01023C),
                                      ),
                                    ),
                                    Text(
                                      items[index].expDate ?? '',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "Cairo-VariableFont_wght",
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF01023C),
                                      ),
                                    ),
                                  ],
                                ),
                                trailing: Container(
                                  width: 150,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 0),
                                        child: Text(
                                          "Set as Default",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontFamily:
                                                "Cairo-VariableFont_wght",
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF8C8CB1),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 0, 20, 0),
                                        child: SvgPicture.asset(
                                          'assets/images/dot.svg',
                                          width: 4,
                                          height: 4,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 0),
                                        child: Text(
                                          "Delete",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontFamily:
                                                "Cairo-VariableFont_wght",
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFFEB1919),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )));
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),

            // PROMOTION CODES PART
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [


                const Padding(
                  padding: EdgeInsets.fromLTRB(32, 0, 0, 0),
                  child: Text(
                    "Promotion Codes",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Cairo-VariableFont_wght",
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4D4E74),
                    ),
                  ),
                ),

                ButtonTheme(
                  minWidth: 98,
                  height: 30,
                  child: MaterialButton(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24),
                            bottomLeft: Radius.circular(24),
                            bottomRight: Radius.circular(24)),
                      ),
                      color: const Color(0xFFF6F6FB),
                      elevation: 0,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'ADD NEW',
                            style: TextStyle(
                              fontSize: 10,
                              letterSpacing: 1,
                              fontFamily: "Cairo-VariableFont_wght",
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF4D4E74),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: SvgPicture.asset(
                              'assets/images/Plus.svg',
                              width: 8,
                              height: 8,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () async {}),
                ),


              ],
            ),
            FutureBuilder(
              future: FinanceService().getPromotionCodeList(),
              builder: (context, data) {
                if (data.hasError) {
                  return Center(child: Text("${data.error}"));
                } else if (data.hasData) {
                  var items = data.data as List<PromotionCodeModel>;

                  return ListView.builder(
                      shrinkWrap: true,
                      itemCount: items == null ? 0 : items.length,
                      itemBuilder: ((context, index) => Padding(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                            child: Material(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                                side: BorderSide(
                                    color: Colors.transparent, width: 0),
                              ),
                              child: Stack(
                                children: [
                                  Material(
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      side: BorderSide(
                                          color: Color(0xFFE5E5F0), width: 2),
                                    ),
                                    child: ListTile(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(24),
                                        // side: BorderSide(color: Colors.black),
                                      ),
                                      // tileColor: Colors.white,

                                      tileColor:
                                          Provider.of<FinancePageProvider>(
                                                          context)
                                                      .selectedPromotionCode ==
                                                  index
                                              ? Colors.white
                                              : Color(0xFFF6F6FB),

                                      onTap: () {
                                        Provider.of<FinancePageProvider>(
                                                context,
                                                listen: false)
                                            .updatePromotionCodeValue(index);
                                      },

                                      contentPadding:
                                          EdgeInsets.fromLTRB(0, 16, 16, 16),
                                      leading: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 15, 0, 0),
                                        child: Transform.rotate(
                                          angle: -math.pi / 2,
                                          child: Text(
                                            items[index].name ?? '',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontFamily:
                                                  "Cairo-VariableFont_wght",
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF8C8CB1),
                                            ),
                                          ),
                                        ),
                                      ),
                                      title: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            child: Text(
                                              items[index].codeNumber ?? '',
                                              style: TextStyle(
                                                fontSize: 24,
                                                letterSpacing: 2,
                                                fontFamily:
                                                    "Cairo-VariableFont_wght",
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF01023C),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "Expiry: ",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily:
                                                      "Cairo-VariableFont_wght",
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFF8C8CB1),
                                                ),
                                              ),
                                              Text(
                                                items[index].expDate ?? '',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily:
                                                      "Cairo-VariableFont_wght",
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF8C8CB1),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        12, 0, 12, 0),
                                                child: SvgPicture.asset(
                                                  'assets/images/dot.svg',
                                                  width: 4,
                                                  height: 4,
                                                ),
                                              ),
                                              Text(
                                                items[index].usesLeft ?? '',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily:
                                                      "Cairo-VariableFont_wght",
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF8C8CB1),
                                                ),
                                              ),
                                              Text(
                                                " Uses Left",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily:
                                                      "Cairo-VariableFont_wght",
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFF8C8CB1),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        12, 0, 12, 0),
                                                child: SvgPicture.asset(
                                                  'assets/images/dot.svg',
                                                  width: 4,
                                                  height: 4,
                                                ),
                                              ),
                                              Text(
                                                items[index].worth ?? '',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily:
                                                      "Cairo-VariableFont_wght",
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF8C8CB1),
                                                ),
                                              ),
                                              Text(
                                                " Worth",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily:
                                                      "Cairo-VariableFont_wght",
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xFF8C8CB1),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 10, 0, 0),
                                            child: Container(
                                              width: 150,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 0, 0, 0),
                                                    child: Text(
                                                      "Set as Default",
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        fontFamily:
                                                            "Cairo-VariableFont_wght",
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Color(0xFF8C8CB1),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(20, 0, 20, 0),
                                                    child: SvgPicture.asset(
                                                      'assets/images/dot.svg',
                                                      width: 4,
                                                      height: 4,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 0, 0, 0),
                                                    child: Text(
                                                      "Delete",
                                                      style: TextStyle(
                                                        fontSize: 10,
                                                        fontFamily:
                                                            "Cairo-VariableFont_wght",
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Color(0xFFEB1919),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),


                                  Positioned(
                                    left: 60,
                                    top: -18,
                                    child: Container(
                                      width: 32,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                            color: Color(0xFFE5E5F0), width: 2),
                                        color: Color(0xFFF6F6FB),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 60,
                                    bottom: -18,
                                    child: Container(
                                      width: 32,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                            color: Color(0xFFE5E5F0), width: 2),
                                        color: Color(0xFFF6F6FB),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )));
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
