import 'package:finance_app/components/constants.dart';
import 'package:finance_app/size_config.dart';
import 'package:flutter/material.dart';

class ExpenseCard extends StatefulWidget {
  const ExpenseCard(
      {Key? key,
      required this.expenseTitle,
      required this.price,
      required this.icon})
      : super(key: key);

  final String expenseTitle, icon;
  final double price;

  @override
  State<ExpenseCard> createState() => _ExpenseCardState();
}

class _ExpenseCardState extends State<ExpenseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(10),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(10),
        vertical: getProportionateScreenWidth(10),
      ),
      width: getProportionateScreenWidth(215),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color(0xFF343434).withOpacity(0.8),
            const Color(0xFF343434).withOpacity(0.3),
          ],
        ),
      ),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              widget.icon,
              width: getProportionateScreenWidth(45),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.expenseTitle,
                  style: const TextStyle(
                    fontSize: 20,
                    color: kSecondaryTextColor,
                  ),
                ),
                Text(
                  "\$${widget.price.toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
