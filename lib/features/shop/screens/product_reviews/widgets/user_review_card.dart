import 'package:e_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_store/common/widgets/products/ratings/rating_indicator.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/sizes.dart';
import 'package:e_store/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(EImages.userProfileImage2),
                ),
                const SizedBox(
                  width: ESizes.spaceBtwItems,
                ),
                Text('John Doe', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),

        const SizedBox(
          height: ESizes.spaceBtwItems,
        ),

        /// Review
        Row(
          children: [
            const ERatingBarIndicator(rating: 4),
            const SizedBox(width: ESizes.spaceBtwItems),
            Text(
              '01 Nov, 2023',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),

        const SizedBox(height: ESizes.spaceBtwItems),

        const ReadMoreText(
          'The User interface of the app is quite intuitave. I wa able to navigate and make purchases seamlessly. Great job! ',
          trimLines: 1,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: EColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: EColors.primary),
          trimMode: TrimMode.Line,
        ),
        ERoundedContainer(
          backgroundColor: dark ? EColors.darkerGrey : EColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(ESizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('E\'s Store',
                        style: Theme.of(context).textTheme.titleMedium),
                    Text(
                      '29 Jan, 2024',
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
                const SizedBox(height: ESizes.spaceBtwItems),
                const ReadMoreText(
                  'The User interface of the app is quite intuitave. I wa able to navigate and make purchases seamlessly. Great job! ',
                  trimLines: 1,
                  trimExpandedText: 'show less',
                  trimCollapsedText: 'show more',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: EColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: EColors.primary),
                  trimMode: TrimMode.Line,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: ESizes.spaceBtwSections,
        )
      ],
    );
  }
}
