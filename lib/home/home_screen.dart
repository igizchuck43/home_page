import 'package:flutter/material.dart';
import 'package:home_page/home/components/home_banner.dart';
import 'package:home_page/home/components/home_header.dart';
import 'package:home_page/home/components/special_links.dart';





class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              HomeHeader(),
              HomeBanner(),
              SizedBox(height: 10),
              SpecialLinks(),

            ],
          ),
        ),
      ),
    );
  }
}
