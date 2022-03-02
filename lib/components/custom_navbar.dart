import 'package:finance_app/screens/home/home_screen.dart';
import 'package:finance_app/screens/income/income_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../enums.dart';
import 'constants.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            spreadRadius: 1.0,
            color: const Color(0xFFDADADA).withOpacity(0.1),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () =>
                  Navigator.pushNamed(context, HomeScreen.routeName)
                      .then((value) => setState(() {})),
              icon: SvgPicture.asset("assets/icons/Home.svg",
                  width: 24,
                  color: MenuState.home == widget.selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor),
            ),
            IconButton(
              onPressed: () =>
                  Navigator.pushNamed(context, IncomeScreen.routeName)
                      .then((value) => setState(() {})),
              icon: SvgPicture.asset("assets/icons/Income.svg",
                  width: 25,
                  color: MenuState.income == widget.selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor),
            ),
            IconButton(
              onPressed: () =>
                  Navigator.pushNamed(context, HomeScreen.routeName)
                      .then((value) => setState(() {})),
              icon: SvgPicture.asset("assets/icons/Bell.svg",
                  width: 25,
                  color: MenuState.notification == widget.selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor),
            ),
            IconButton(
              onPressed: () =>
                  Navigator.pushNamed(context, HomeScreen.routeName)
                      .then((value) => setState(() {})),
              icon: SvgPicture.asset("assets/icons/User Icon.svg",
                  color: MenuState.profile == widget.selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor),
            ),
          ],
        ),
      ),
    );
  }
}
