import 'package:flutter/material.dart';
import '../core/app_colors.dart';
import '../controllers/level_controller.dart';
import '../models/level_model.dart';

class LevelsView extends StatelessWidget {
  final LevelController _controller = LevelController();

  LevelsView({super.key});

  @override
  Widget build(BuildContext context) {
    final levels = _controller.getLevels();

    return Scaffold(
      backgroundColor: AppColors.primaryBg,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Levels',
          style: TextStyle(
            color: AppColors.accentColor,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 30,
          childAspectRatio: 0.8,
        ),
        itemCount: levels.length,
        itemBuilder: (context, index) => LevelCard(level: levels[index]),
      ),
    );
  }
}

class LevelCard extends StatelessWidget {
  final Level level;

  const LevelCard({super.key, required this.level});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildStarRating(),
        const SizedBox(height: 12),
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  level.backgroundColor,
                  level.backgroundColor.withOpacity(0.8),
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: level.backgroundColor.withOpacity(0.35),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Stack(
                children: [
                  _buildBackgroundDecoration(),
                  _buildMainContent(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildStarRating() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return Icon(
          index < level.earnedStars ? Icons.star_rounded : Icons.star_outline_rounded,
          color: index < level.earnedStars ? Colors.amber : Colors.grey.withOpacity(0.4),
          size: 28,
        );
      }),
    );
  }

  Widget _buildBackgroundDecoration() {
    return Positioned(
      top: -15,
      right: -15,
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Colors.white.withOpacity(0.08),
      ),
    );
  }

  Widget _buildMainContent() {
    return Center(
      child: level.isLocked
          ? const Icon(Icons.lock_person_rounded, color: Colors.white70, size: 50)
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'LEVEL',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 14,
                    letterSpacing: 3,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  level.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
    );
  }
}