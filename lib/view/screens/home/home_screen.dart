import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      top: false, bottom: false,
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsetsDirectional.symmetric(vertical: 20, horizontal: 24),
        ),
      ),
    );
  }
}
