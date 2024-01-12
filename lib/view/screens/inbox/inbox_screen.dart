import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/utils/app_utils/app_animation/app_animation.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/view/widgets/error_widgets/no_data_found_widget.dart';

class InboxScreen extends StatefulWidget {
  const InboxScreen({super.key});

  @override
  State<InboxScreen> createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        /// appbar
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 24, vertical: 12),
          margin: const EdgeInsetsDirectional.only(top: 36, bottom: 20),
          color: AppColors.colorWhite,
          alignment: FractionalOffset.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Inbox", style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 18, fontWeight: FontWeight.w500)),
            ],
          ),
        ),

        /// body
        const Expanded(
          child: NoDataFoundWidget(animSrc: AppAnimation.noDataAnim),
        )
      ],
    );
  }
}
