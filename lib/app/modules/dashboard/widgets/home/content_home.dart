import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:member_rkm/app/components/base_shimmer.dart';
import 'package:member_rkm/app/components/base_text.dart';
import 'package:member_rkm/app/core/utils/api_url.dart';
import 'package:member_rkm/app/core/values/app_helpers.dart';
import 'package:member_rkm/app/core/values/colors.dart';
import 'package:member_rkm/app/modules/dashboard/controller.dart';

class ContentHome extends StatelessWidget {
  ContentHome({super.key});
  final controller = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: 300,
        width: Get.width,
        margin: const EdgeInsets.symmetric(vertical: 15),
        padding: const EdgeInsets.all(15),
        color: bgSectionColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BaseText(
                        text: 'Event & Promo',
                        size: 16,
                        color: whiteColor,
                        bold: FontWeight.w600,
                      ),
                      BaseText(
                        text: 'Lihat promo pada acara anda disini!',
                        size: 12,
                        color: greyTextColor,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => Get.toNamed('/allContent'),
                  child: const BaseText(
                    text: 'Lihat Semua',
                    color: orangeColor,
                    bold: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: controller.contentLoading.value
                  ? Swiper(
                      physics: const NeverScrollableScrollPhysics(),
                      viewportFraction: 0.60,
                      scale: 0.78,
                      outer: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return BaseShimmer(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        );
                      },
                    )
                  : Swiper(
                      index: controller.contentIndex.value,
                      onIndexChanged: (index) =>
                          controller.contentIndex.value = index,
                      viewportFraction: 0.55,
                      scale: 0.70,
                      duration: 800,
                      autoplay: true,
                      outer: true,
                      onTap: (index) {
                        final content = controller.content.length >= 3
                            ? controller.content.sublist(0, 3)[index]
                            : controller.content[index];
                        final date = AppHelpers.dayDateFormat(
                            content.createdAt ?? DateTime(0000));

                        Get.toNamed(
                          '/detailContent',
                          arguments: {
                            'title': content.title,
                            'slug': content.slug,
                            'date': date,
                            'category': content.category,
                          },
                        );
                      },
                      itemCount: controller.content.length >= 3
                          ? controller.content.sublist(0, 3).length
                          : controller.content.length,
                      itemBuilder: (context, index) {
                        final content = controller.content.length >= 3
                            ? controller.content.sublist(0, 3)[index]
                            : controller.content[index];

                        return Image.network(
                          '${ApiUrl.baseStorageUrl}/contents/${content.category}/${content.featuredImage}',
                          loadingBuilder: (context, child, loadingProgress) {
                            return loadingProgress == null
                                ? child
                                : BaseShimmer(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade300,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  );
                          },
                          fit: BoxFit.cover,
                        );
                      },
                    ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                controller.content.length >= 3
                    ? controller.content.sublist(0, 3).length
                    : controller.content.length,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: controller.contentIndex.value == index ? 12 : 8,
                  width: controller.contentIndex.value == index ? 12 : 8,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: controller.contentIndex.value == index
                        ? orangeColor
                        : greyTextColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
