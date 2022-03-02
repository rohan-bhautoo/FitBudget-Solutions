import 'package:finance_app/components/constants.dart';
import 'package:finance_app/components/icon_container.dart';
import 'package:finance_app/size_config.dart';
import 'package:flutter/material.dart';

class TransactionCard extends StatefulWidget {
  const TransactionCard(
      {Key? key,
      required this.icon,
      required this.transactionName,
      required this.time,
      required this.price})
      : super(key: key);

  final String icon, transactionName, time;
  final double price;

  @override
  State<TransactionCard> createState() => _TransactionCardState();
}

class _TransactionCardState extends State<TransactionCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getProportionateScreenHeight(15)),
      child: Row(
        children: [
          IconContainer(icon: widget.icon),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.transactionName,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                widget.time,
                style: const TextStyle(
                  fontSize: 15,
                  color: kSecondaryTextColor,
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            "\$${widget.price.toStringAsFixed(2)}",
            style: const TextStyle(
              fontSize: 20,
              color: kSecondaryTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
