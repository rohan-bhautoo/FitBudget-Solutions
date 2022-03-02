import 'package:flutter/material.dart';

import '../../components/custom_navbar.dart';
import '../../enums.dart';
import 'components/body.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return Future(() => false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Welcome Back Rohan!"),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: Column(),
        ),
        body: const SingleChildScrollView(child: Body()),
        bottomNavigationBar:
            const CustomBottomNavBar(selectedMenu: MenuState.home),
      ),
    );
  }
}
