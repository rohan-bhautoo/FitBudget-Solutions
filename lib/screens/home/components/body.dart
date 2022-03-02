import 'package:finance_app/components/constants.dart';
import 'package:finance_app/components/rounded_icon_btn.dart';
import 'package:finance_app/screens/home/components/expense_card.dart';
import 'package:finance_app/screens/home/components/transaction_card.dart';
import 'package:finance_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flutter_credit_card/glassmorphism_config.dart';

class Body extends StatefulWidget {
  static String routeName = "/home";

  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, dynamic>> expense = [
    {
      "title": "Shopping",
      "price": 300.00,
      "icon": "assets/images/shopping-cart.png"
    },
    {
      "title": "Vehicle",
      "price": 1402.30,
      "icon": "assets/images/car.png",
    },
  ];

  List<Map<String, dynamic>> transaction = [
    {
      "transactionName": "Shopping",
      "price": 45.00,
      "icon": "assets/icons/grocery.png",
      "time": "Just Now"
    },
    {
      "transactionName": "Gym",
      "price": 125.00,
      "icon": "assets/icons/gym.png",
      "time": "02 March 2022 22:47"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CreditCardWidget(
              cardBgColor: kPrimaryColor,
              cardNumber: "5301 1122 4595 7852",
              expiryDate: "01/30",
              cardHolderName: "Mr. ROHAN BHAUTOO",
              cvvCode: "123",
              showBackView: false,
              labelCardHolder: "Mr. ROHAN BHAUTOO",
              labelExpiredDate: "01/30",
              isChipVisible: true,
              isSwipeGestureEnabled: true,
              animationDuration: const Duration(milliseconds: 1000),
              onCreditCardWidgetChange: (creditCardBrand) {},
              glassmorphismConfig: Glassmorphism(
                blurX: 0.0,
                blurY: 0.0,
                gradient: kPrimaryGradientColor,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Total Spent",
                        style: TextStyle(
                          color: kSecondaryTextColor,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.right,
                      ),
                      Text(
                        "\$1,520.00",
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                  RoundedIconBtn(
                    iconData: Icons.keyboard_control_rounded,
                    onPressed: () {},
                    addText: false,
                    text: "",
                    width: 30,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    expense.length,
                    (index) => ExpenseCard(
                      expenseTitle: expense[index]["title"],
                      price: expense[index]["price"],
                      icon: expense[index]["icon"],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ...List.generate(
              transaction.length,
              (index) => TransactionCard(
                icon: transaction[index]["icon"],
                transactionName: transaction[index]["transactionName"],
                time: transaction[index]["time"],
                price: transaction[index]["price"],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
