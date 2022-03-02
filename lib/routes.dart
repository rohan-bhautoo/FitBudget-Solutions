import 'package:finance_app/screens/home/home_screen.dart';
import 'package:finance_app/screens/income/income_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  IncomeScreen.routeName: (context) => const IncomeScreen(),
};
