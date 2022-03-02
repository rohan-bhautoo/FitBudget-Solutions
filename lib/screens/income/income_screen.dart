import 'package:flutter/material.dart';
import '../../components/constants.dart';
import '../../components/custom_navbar.dart';
import '../../enums.dart';
import '../../size_config.dart';
import 'components/body.dart';

class IncomeScreen extends StatefulWidget {
  static String routeName = "/income";

  const IncomeScreen({Key? key}) : super(key: key);

  @override
  _IncomeScreenState createState() => _IncomeScreenState();
}

class _IncomeScreenState extends State<IncomeScreen> {
  TabBar get _tabBar => TabBar(
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kPrimaryColor,
        ),
        labelPadding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(50)),
        labelStyle: const TextStyle(fontSize: 18),
        isScrollable: true,
        tabs: const [
          Tab(text: "Income"),
          Tab(text: "Outcome"),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
            )
          ],
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.white.withOpacity(0.1),
              ),
              child: _tabBar,
            ),
          ),
        ),
        body: const Body(),
        bottomNavigationBar:
            const CustomBottomNavBar(selectedMenu: MenuState.income),
      ),
    );
  }
}
