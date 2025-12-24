import 'package:flutter/material.dart';
import '../core/app_colors.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  final HomeController _controller = HomeController();

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [AppColors.primaryBg, Color(0xFF110B22)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(flex: 2),
            _buildLogoSection(),
            const Spacer(),
            _buildActionSection(context),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _buildLogoSection() {
    return Column(
      children: [
        Image.asset('assets/images/logo.png', height: 180),
        const SizedBox(height: 20),
        const Text(
          "Quizzles",
          style: TextStyle(
            fontSize: 42,
            fontWeight: FontWeight.bold,
            color: AppColors.accentColor,
          ),
        ),
      ],
    );
  }

  Widget _buildActionSection(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () => _controller.navigateToLevels(context),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.purpleBtn,
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
          child: const Text(
            "Play Now",
            style: TextStyle(fontSize: 20, color: AppColors.white),
          ),
        ),
      ],
    );
  }
}