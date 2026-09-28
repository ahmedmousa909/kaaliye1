import 'package:flutter/material.dart';

class CategoryModel {
  final String title;
  final String emoji;
  final IconData? icon;

  const CategoryModel({
    required this.title,
    required this.emoji,
    this.icon,
  });
}
