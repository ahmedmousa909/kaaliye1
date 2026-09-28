import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.border),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0D0A4B92),
            blurRadius: 14,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: const Row(
        children: [
          SizedBox(width: 18),
          Icon(
            Icons.search_rounded,
            color: AppColors.navy,
            size: 31,
          ),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              'Maxaad raadinaysaa?',
              style: TextStyle(
                color: AppColors.textMuted,
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Icon(
            Icons.tune_rounded,
            color: AppColors.textMuted,
            size: 27,
          ),
          SizedBox(width: 18),
        ],
      ),
    );
  }
}
