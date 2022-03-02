import 'package:flutter/material.dart';

import '../size_config.dart';

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    Key? key,
    required this.iconData,
    required this.onPressed,
    required this.addText,
    required this.text,
    required this.width,
  }) : super(key: key);

  final IconData iconData;
  final GestureTapCallback onPressed;
  final double width;
  final bool addText;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(30),
      width: getProportionateScreenWidth(width),
      child: TextButton(
        onPressed: onPressed,
        child: addText == false
            ? Icon(
                iconData,
                color: Colors.white,
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    iconData,
                    color: Colors.white,
                  ),
                  Text(
                    text,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
        style: TextButton.styleFrom(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          padding: EdgeInsets.zero,
        ),
      ),
    );
  }
}
