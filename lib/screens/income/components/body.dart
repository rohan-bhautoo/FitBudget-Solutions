import 'package:finance_app/components/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TabBarView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: const [
                SizedBox(height: 20),
                Text(
                  "Saved This Month",
                  style: TextStyle(
                    color: kSecondaryTextColor,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "\$27,902.56",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Text("Tab 2"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
