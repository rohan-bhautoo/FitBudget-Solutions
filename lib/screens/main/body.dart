import 'package:finance_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';
import '../../components/constants.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "Verification",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(30),
                          color: kTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Touch ID sensor to verify\ntransaction",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(20),
                          color: kSecondaryTextColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )
                ],
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(context, HomeScreen.routeName),
                child: Image.asset(
                  "assets/images/animation.png",
                  width: getProportionateScreenWidth(250),
                ),
              ),
              Image.asset(
                "assets/images/arrows_fade.png",
                width: getProportionateScreenWidth(228),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
