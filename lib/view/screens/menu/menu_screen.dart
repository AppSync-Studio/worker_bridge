import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/utils/app_utils/app_icon/app_icons.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/view/screens/menu/inner_widget/menu_account_section.dart';
import 'package:worker_bridge/view/screens/menu/inner_widget/menu_help_section.dart';
import 'package:worker_bridge/view/screens/menu/inner_widget/menu_offer_section.dart';
import 'package:worker_bridge/view/screens/menu/inner_widget/menu_order_section.dart';
import 'package:worker_bridge/view/screens/menu/inner_widget/menu_settings_section.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// appbar
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 24, vertical: 12),
          margin: const EdgeInsetsDirectional.only(top: 36),
          color: AppColors.colorWhite,
          alignment: FractionalOffset.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Menu", style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 18, fontWeight: FontWeight.w500)),
            ],
          ),
        ),
        const Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 24, vertical: 20),
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                // menu account section
                MenuAccountSection(),
                Gap(12),

                // menu order section
                MenuOrderSection(),
                Gap(12),
                
                // menu offer section
                MenuOfferSection(),
                Gap(12),

                // menu help section
                MenuHelpSection(),
                Gap(12),

                // menu settings section
                MenuSettingsSection()
              ],
            ),
          ),
        )
      ],
    );
  }
}
