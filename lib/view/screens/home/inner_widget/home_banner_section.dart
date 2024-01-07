import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/view/screens/home/home_controller.dart';

class HomeBannerSection extends StatelessWidget {
  
  final HomeController homeController;
  const HomeBannerSection({required this.homeController, super.key});

  @override
  Widget build(BuildContext context) {
    
    return Column(
      children: [
        CarouselSlider.builder(
          carouselController: homeController.carouselController,
          itemCount: homeController.serviceBannerList.length,
          itemBuilder: (context, index, pageIndex) => Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsetsDirectional.only(end: 12),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.colorBlack, width: 1),
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(image: AssetImage(homeController.serviceBannerList[index].imageSrc!), fit: BoxFit.fill),
            ),
          ),
          options: CarouselOptions(
            height: 150,
            autoPlay: true,
            onPageChanged: (val, _) => homeController..carouselController.jumpToPage(val)..setCurrentIndex(val)
          )
        ),
        const Gap(12),
        DotsIndicator(
          dotsCount: homeController.serviceBannerList.length,
          position: homeController.currentIndex,
          decorator: DotsDecorator(
            activeColor: AppColors.colorBlack,
            size: const Size.square(9.0),
            activeSize: const Size(32.0, 9.0),
            activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          ),
        )
      ],
    );
  }
}
