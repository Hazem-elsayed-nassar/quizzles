import 'dart:ui';

import '../models/level_model.dart';
import '../core/app_colors.dart';

class LevelController {
  final List<Level> _levels = [
    Level(
      id: 1,
      title: '01',
      totalStars: 3,
      earnedStars: 3,
      isLocked: false,
      backgroundColor: AppColors.purpleBtn,
    ),
    Level(
      id: 2,
      title: '02',
      totalStars: 3,
      earnedStars: 3,
      isLocked: false,
      backgroundColor: const Color(0xFF47CFFF),
    ),
    Level(
      id: 3,
      title: '03',
      totalStars: 3,
      earnedStars: 2,
      isLocked: false,
      backgroundColor: const Color(0xFFFF8E5E),
    ),
    Level(
      id: 4,
      title: '04',
      totalStars: 3,
      earnedStars: 2,
      isLocked: false,
      backgroundColor: AppColors.accentColor,
    ),
    Level(
      id: 5,
      title: '05',
      totalStars: 3,
      earnedStars: 0,
      isLocked: false,
      backgroundColor: const Color(0xFFFF5E92),
    ),
    Level(
      id: 6,
      title: '06',
      totalStars: 3,
      earnedStars: 0,
      isLocked: true,
      backgroundColor: AppColors.purpleBtn.withOpacity(0.5),
    ),
  ];

  List<Level> getLevels() => _levels;
}