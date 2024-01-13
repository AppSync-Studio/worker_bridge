import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:worker_bridge/utils/app_utils/app_animation/app_animation.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/view/screens/booking/booking_controller.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {

  @override
  void initState() {
    Get.put(BookingController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return GetBuilder<BookingController>(

      builder: (controller) {
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
                  Text("Bookings", style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 18, fontWeight: FontWeight.w500)),
                  const Gap(16),
                  Row(
                    children: List.generate(controller.statusList.length, (index) => Flexible(
                      child: InkWell(
                        onTap: () => controller.changeSelectedStatus(index),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          padding: const EdgeInsetsDirectional.symmetric(vertical: 8, horizontal: 8),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: index == controller.selectedStatus ? AppColors.primaryColor : AppColors.colorGrey.withOpacity(0.3),
                                width: 2
                              )
                            )
                          ),
                          child: FittedBox(
                            child: Text(
                              controller.statusList[index],
                              style: GoogleFonts.nunito(
                                color: index == controller.selectedStatus ? AppColors.primaryColor : AppColors.colorBlack,
                                fontSize: 14,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          ),
                        ),
                      ),
                    )),
                  )
                ],
              ),
            ),
            /// body
            Expanded(
              child: PageView(
                controller: controller.pageController,
                physics: const BouncingScrollPhysics(),
                onPageChanged: (pageIndex) => controller.changePage(pageIndex),
                children: List.generate(controller.statusList.length, (index){

                  return controller.selectedStatus == 0 ? SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsetsDirectional.only(start: 24, end: 24, bottom: 8),
                    child: Column(
                      children: List.generate(20, (index) => Container(
                        padding: const EdgeInsetsDirectional.all(12),
                        margin: const EdgeInsetsDirectional.only(bottom: 12),
                        height: 56,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: AppColors.colorWhite,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: AppColors.colorGrey, width: 1)
                        ),
                      )),
                    ),
                  ) : controller.selectedStatus == 1 ? SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsetsDirectional.only(start: 24, end: 24, bottom: 8),
                    child: Column(
                      children: List.generate(15, (index) => Container(
                        padding: const EdgeInsetsDirectional.all(12),
                        margin: const EdgeInsetsDirectional.only(bottom: 12),
                        height: 56,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: AppColors.colorWhite,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: AppColors.colorGrey, width: 1)
                        ),
                      )),
                    ),
                  ) : controller.selectedStatus == 2 ? SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsetsDirectional.only(start: 24, end: 24, bottom: 8),
                    child: Column(
                      children: List.generate(5, (index) => Container(
                        padding: const EdgeInsetsDirectional.all(12),
                        margin: const EdgeInsetsDirectional.only(bottom: 12),
                        height: 56,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: AppColors.colorWhite,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: AppColors.colorGrey, width: 1)
                        ),
                      )),
                    ),
                  ) : Align(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Lottie.asset(AppAnimation.noDataAnim, height: 150, width: 150),
                        Text(
                          "No Data Found",
                          style: GoogleFonts.nunito(
                              color: AppColors.colorBlack,
                              fontWeight: FontWeight.w600,
                              fontSize: 14
                          ),
                        )
                      ],
                    ),
                  );
                }),
              ),
            )
          ],
        );
      }
    );
  }
}
