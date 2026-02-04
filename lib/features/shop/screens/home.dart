import 'package:deshi_bazaar/features/shop/screens/widgets/home_appbar.dart';
import 'package:deshi_bazaar/features/shop/screens/widgets/primary_header_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: PrimaryHeaderContainer(child: Column(children: [HomeAppBar()])),
      ),
    );
  }
}
