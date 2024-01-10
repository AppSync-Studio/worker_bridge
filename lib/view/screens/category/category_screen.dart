import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worker_bridge/utils/app_utils/color/app_colors.dart';
import 'package:worker_bridge/view/screens/category/category_controller.dart';
import 'package:worker_bridge/view/widgets/cards/category_card_widget.dart';

class CategoryScreen extends StatefulWidget {

  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

  @override
  void initState() {
    Get.put(CategoryController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      top: false,
      bottom: false,
      child: GetBuilder<CategoryController>(
        builder: (controller) {
          return Scaffold(
            backgroundColor: AppColors.colorWhite,
            appBar: AppBar(
              backgroundColor: AppColors.colorWhite,
              elevation: 0,
              automaticallyImplyLeading: false,
              leading: IconButton(
                  alignment: Alignment.center,
                  iconSize: 18,
                  onPressed: () => Get.back(),
                  icon: const Icon(Icons.arrow_back)
              ),
              title: Text("Categories", textAlign: TextAlign.center, style: GoogleFonts.nunito(color: AppColors.colorBlack, fontSize: 18, fontWeight: FontWeight.w500)),
              titleSpacing: 0,
            ),
            body: GridView.builder(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 24, vertical: 20),
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                crossAxisCount: 3,
                mainAxisExtent: 100
              ),
              itemCount: 10,
              itemBuilder: (context, index) => CategoryCardWidget(
                onPressed: (){},
                cardHeight: 100, cardWidth: 100,
                iconSrc: controller.categoryList[index].iconSrc,
                categoryName: controller.categoryList[index].categoryTitle,
                maxLines: 2,
              )
            ),
          );
        }
      ),
    );
  }
}
