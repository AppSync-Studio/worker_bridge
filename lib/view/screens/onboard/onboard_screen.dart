import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/view/screens/onboard/onboard_controller.dart';

class OnboardScreen extends StatefulWidget {

  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {

  @override
  void initState() {
    Get.put(OnboardController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        body: GetBuilder<OnboardController>(
          builder: (controller) {
            return Stack(
              clipBehavior: Clip.none,
              children: [
                PageView(
                  onPageChanged: (index) => controller.changePages(index),
                  controller: controller.pageController ,
                  children: List.generate(controller.onboardDataList.length, (index) => Padding(
                    padding: const EdgeInsetsDirectional.symmetric(horizontal: 24),
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            controller.onboardDataList[index].imageSrc,
                            height: MediaQuery.of(context).size.height * 0.4,
                            width: MediaQuery.of(context).size.width * 0.8
                          ),
                          const Gap(12),
                          Text(
                            controller.onboardDataList[index].onboardTitle,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                              color: AppColors.colorBlack,
                              fontSize: 20,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          const Gap(8),
                          Text(
                            controller.onboardDataList[index].onboardSubTitle,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                              color: AppColors.colorBlack,
                              fontSize: 14,
                              fontWeight: FontWeight.normal
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
                ),

                // skip button
                Positioned(
                  right: 24,
                  top: 36,
                  child: TextButton(
                    onPressed: () => controller.gotoNextScreen(),
                    child: Text(
                      "Skip",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                        color: AppColors.colorBlack,
                        fontSize: 12,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ),

                // bottom section
                Positioned(
                  bottom: 44,
                  left: 24,
                  right: 24,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmoothPageIndicator(
                        controller: controller.pageController,
                        onDotClicked: (index) => controller.changeIndicators(index),
                        count:  controller.onboardDataList.length,
                        axisDirection: Axis.horizontal,
                        effect: const ExpandingDotsEffect(
                          dotHeight:  6.0,
                          activeDotColor: AppColors.colorBlack
                        ),
                      ),
                      GestureDetector(
                        onTap: () => controller.nextPage(),
                        child: Container(
                          height: 48, width: 48,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: AppColors.colorBlack,
                            shape: BoxShape.circle
                          ),
                          child: const Icon(
                            Icons.arrow_forward_ios_sharp,
                            color: AppColors.colorWhite,
                            size: 24
                          )
                        )
                      )
                    ],
                  ),
                )
              ],
            );
          }
        ),
      ),
    );
  }
}
