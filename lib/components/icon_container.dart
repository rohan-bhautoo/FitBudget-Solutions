import 'package:finance_app/components/constants.dart';
import 'package:finance_app/size_config.dart';
import 'package:flutter/material.dart';

class IconContainer extends StatefulWidget {
  const IconContainer({Key? key, required this.icon}) : super(key: key);

  final String icon;

  @override
  State<IconContainer> createState() => _IconContainerState();
}

class _IconContainerState extends State<IconContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(10),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(5),
        vertical: getProportionateScreenWidth(10),
      ),
      width: getProportionateScreenWidth(60),
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
        child: Image.asset(
          widget.icon,
          color: kSecondaryTextColor,
        ),
      ),
    );
  }
}
