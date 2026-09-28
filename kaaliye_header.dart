import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class KaaliyeHeader extends StatelessWidget {
  const KaaliyeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              SizedBox(
                width: 58,
                height: 58,
                child: Image.asset(
                  'assets/images/kaaliye_logo.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(width: 10),
              const Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'KAALIYE',
                      maxLines: 1,
                      style: TextStyle(
                        color: AppColors.navy,
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        letterSpacing: .2,
                      ),
                    ),
                    Text(
                      'Shaqo hel. Shaqaale hel.',
                      maxLines: 1,
                      style: TextStyle(
                        color: AppColors.blue,
                        fontSize: 10.5,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: AppColors.paleBlue,
            borderRadius: BorderRadius.circular(14),
          ),
          child: const Row(
            children: [
              Icon(Icons.location_on_rounded, color: AppColors.blue, size: 23),
              SizedBox(width: 5),
              Text(
                'Mogadishu',
                style: TextStyle(
                  color: AppColors.navy,
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Icon(Icons.keyboard_arrow_down_rounded, color: AppColors.blue),
            ],
          ),
        ),
        const SizedBox(width: 8),
        Container(
          width: 48,
          height: 50,
          decoration: BoxDecoration(
            color: AppColors.paleBlue,
            borderRadius: BorderRadius.circular(14),
          ),
          child: const Icon(Icons.notifications_rounded, color: AppColors.blue),
        ),
      ],
    );
  }
}
