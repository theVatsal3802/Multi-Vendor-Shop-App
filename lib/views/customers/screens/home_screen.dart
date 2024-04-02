import 'package:flutter/material.dart';
import 'package:multi_vendor_app/views/customers/screens/widgets/banner_widget.dart';
import 'package:multi_vendor_app/views/customers/screens/widgets/search_bar_widget.dart';
import 'package:multi_vendor_app/views/customers/screens/widgets/welcome_text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 24,
        right: 24,
      ),
      child: const Column(
        children: [
          WelcomeTextWidget(),
          SizedBox(
            height: 10,
          ),
          SearchBarWidget(),
          BannerWidget(),
        ],
      ),
    );
  }
}
