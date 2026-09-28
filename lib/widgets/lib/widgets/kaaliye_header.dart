import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class KaaliyeHeader extends StatelessWidget {
  const KaaliyeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 58,
          height: 58,
          child: Image.asset(
            'assets/images/kaaliye_logo.png',
            fit: BoxFit.contain,
          ),
        ),

        const SizedBox(width: 8),

        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'KAALIYE',
                style: TextStyle(
                  color: AppColors.navy,
                  fontSize: 23,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                'Shaqo hel. Shaqaale hel.',
                maxLines: 1,
                style: TextStyle(
                  color: AppColors.blue,
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),

        Container(
          height: 48,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: AppColors.paleBlue,
            borderRadius: BorderRadius.circular(14),
          ),
          child: const Row(
            children: [
              Icon(
                Icons.location_on_rounded,
                color: AppColors.blue,
                size: 21,
              ),
              SizedBox(width: 3),
              Text(
                'Mogadishu',
                style: TextStyle(
                  color: AppColors.navy,
                  fontSize: 13,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down_rounded,
                color: AppColors.blue,
                size: 20,
              ),
            ],
          ),
        ),

        const SizedBox(width: 7),

        Container(
          width: 45,
          height: 48,
          decoration: BoxDecoration(
            color: AppColors.paleBlue,
            borderRadius: BorderRadius.circular(14),
          ),
          child: const Icon(
            Icons.notifications_rounded,
            color: AppColors.blue,
            size: 24,
          ),
        ),
      ],
    );
  }
}
