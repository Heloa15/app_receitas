import 'package:flutter/material.dart';
import '../theme/theme.dart';
import 'home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() =>
      _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animacao;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    animacao = CurvedAnimation(
      parent: controller,
      curve: Curves.elasticOut,
    );

    controller.forward();

    Future.delayed(
      const Duration(milliseconds: 2300),
      () {
        if (!mounted) return;

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (_) => const HomeScreen(),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 226, 226, 255),
              Color.fromARGB(255, 196, 197, 255),
              Color.fromARGB(255, 47, 48, 128),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: ScaleTransition(
            scale: animacao,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: AppTheme.laranja,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: const Icon(
                    Icons.restaurant_menu_rounded,
                    color: Colors.white,
                    size: 68,
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Livro de Receitas',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w900,
                    color: AppTheme.marrom,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Receitas gostosas, momentos especiais',
                  style: TextStyle(
                    color: AppTheme.marrom,
                  ),
                ),
                const SizedBox(height: 28),
                const CircularProgressIndicator(
                  color: AppTheme.laranjaEscuro,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}