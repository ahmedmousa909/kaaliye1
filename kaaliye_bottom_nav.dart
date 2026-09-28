import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class KaaliyeBottomNav extends StatelessWidget {
  const KaaliyeBottomNav({super.key});

  Widget item(IconData icon, String label, {bool active = false}) {
    final color = active ? AppColors.blue : AppColors.navInactive;
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color, size: 25),
          const SizedBox(height: 3),
          Text(
            label,
            style: TextStyle(
              color: color,
              fontSize: 11.5,
              fontWeight: active ? FontWeight.w800 : FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        height: 72,
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: AppColors.border)),
        ),
        padding: const EdgeInsets.fromLTRB(6, 8, 6, 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            item(Icons.home_rounded, 'Home', active: true),
            item(Icons.work_outline_rounded, 'Shaqooyin'),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 47,
                    height: 47,
                    decoration: const BoxDecoration(
                      color: AppColors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.add_rounded, color: Colors.white, size: 31),
                  ),
                  const SizedBox(height: 1),
                  const Text(
                    'Soo geli',
                    style: TextStyle(
                      color: AppColors.navInactive,
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            item(Icons.mail_outline_rounded, 'Messages'),
            item(Icons.person_outline_rounded, 'Profile'),
          ],
        ),
      ),
    );
  }
}
