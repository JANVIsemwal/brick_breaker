import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class OverlayScreen extends StatelessWidget {
  const OverlayScreen({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: const Alignment(0, -0.15),
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.bold,
                  ),
            )
                .animate()
                .fadeIn(duration: 500.ms)
                .slideY(begin: -2, end: 0, duration: 750.ms)
                .then(delay: 200.ms)
                .shake(duration: 500.ms),
            const SizedBox(height: 20),
            if (subtitle.isNotEmpty)
              ShaderMask(
                shaderCallback: (bounds) => const LinearGradient(
                  colors: [Colors.blue, Colors.purple, Colors.red],
                  tileMode: TileMode.mirror,
                ).createShader(bounds),
                child: Text(
                  subtitle,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontSize: 18,
                        color: Colors.white,
                        letterSpacing: 1.5,
                      ),
                ),
              ).animate(onPlay: (controller) => controller.repeat()).shimmer(
                    duration: 2.seconds,
                  ),
          ],
        ),
      ),
    );
  }
}
  