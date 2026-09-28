import 'package:flutter/material.dart';

import '../models/category_model.dart';
import '../theme/app_colors.dart';
import '../widgets/action_card.dart';
import '../widgets/category_card.dart';
import '../widgets/home_search_bar.dart';
import '../widgets/kaaliye_bottom_nav.dart';
import '../widgets/kaaliye_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<CategoryModel> categories = [
    CategoryModel(title: 'Café & Restaurant', emoji: '☕'),
    CategoryModel(title: 'Farsamo', emoji: '🛠️'),
    CategoryModel(title: 'Nadaafad', emoji: '🧹'),

    CategoryModel(title: 'Rarid & Gaarsiin', emoji: '🚚'),
    CategoryModel(title: 'Guri & Daryeel', emoji: '🏠'),
    CategoryModel(title: 'Dukaan & iib', emoji: '🛒'),

    CategoryModel(title: 'Darawal', emoji: '🚙'),
    CategoryModel(title: 'IT & Design', emoji: '💻'),
    CategoryModel(title: 'Waxbarasho', emoji: '📘'),

    CategoryModel(title: 'Dhisme', emoji: '🧱'),
    CategoryModel(title: 'Beeraha', emoji: '🌿'),
    CategoryModel(title: 'Kale', emoji: '•••'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      bottomNavigationBar: const KaaliyeBottomNav(),

      body: SafeArea(
        bottom: false,
        child: LayoutBuilder(
          builder: (context, constraints) {
            final double horizontalPadding =
                constraints.maxWidth < 390 ? 16 : 22;

            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.fromLTRB(
                horizontalPadding,
                16,
                horizontalPadding,
                25,
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // HEADER
                  const KaaliyeHeader(),

                  const SizedBox(height: 27),

                  // HERO TITLE
                  const Text(
                    'Shaqo kasta,\nqof kasta, meel kasta.',
                    style: TextStyle(
                      color: AppColors.navy,
                      fontSize: 36,
                      height: 1.03,
                      letterSpacing: -1.1,
                      fontWeight: FontWeight.w900,
                    ),
                  ),

                  const SizedBox(height: 9),

                  const Text(
                    'Fursadaha shaqo waxaa ay kuugu dhow yihiin Kaaliye.',
                    style: TextStyle(
                      color: AppColors.textMuted,
                      fontSize: 17,
                      height: 1.35,
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  const SizedBox(height: 23),

                  // SEARCH
                  const HomeSearchBar(),

                  const SizedBox(height: 20),

                  // ACTION ROW 1
                  const Row(
                    children: [
                      Expanded(
                        child: ActionCard(
                          title: 'Shaqo raadi',
                          icon: Icons.search_rounded,
                          foreground: Colors.white,
                          background: AppColors.blue,
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: ActionCard(
                          title: 'Shaqo soo geli',
                          icon: Icons.add_rounded,
                          foreground: AppColors.blueDark,
                          background: AppColors.paleBlue,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  // ACTION ROW 2
                  const Row(
                    children: [
                      Expanded(
                        child: ActionCard(
                          title: 'Xirfaddaada\nsoo bandhig',
                          icon: Icons.person_rounded,
                          foreground: AppColors.green,
                          background: AppColors.paleGreen,
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: ActionCard(
                          title: 'Businesses',
                          icon: Icons.business_center_rounded,
                          foreground: AppColors.purple,
                          background: AppColors.palePurple,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 27),

                  // CATEGORY TITLE
                  const Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Categories',
                          style: TextStyle(
                            color: AppColors.navy,
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      Text(
                        'Dhammaan',
                        style: TextStyle(
                          color: AppColors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(width: 1),
                      Icon(
                        Icons.chevron_right_rounded,
                        color: AppColors.blue,
                      ),
                    ],
                  ),

                  const SizedBox(height: 14),

                  // CATEGORY GRID
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: categories.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.94,
                    ),
                    itemBuilder: (context, index) {
                      return CategoryCard(
                        category: categories[index],
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
