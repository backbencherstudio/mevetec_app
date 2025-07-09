import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mevetec_app/src/core/theme/theme_extension/color_scheme.dart';

class AiVoiceRecordingWidgets extends ConsumerStatefulWidget {
  const AiVoiceRecordingWidgets({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AiVoiceRecordingWidgetsState();
}

class _AiVoiceRecordingWidgetsState
    extends ConsumerState<AiVoiceRecordingWidgets>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _rotationAnimation = Tween<double>(begin: 0, end: 2 * math.pi)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.linear));

    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            AnimatedBuilder(
              animation: _rotationAnimation,
              builder: (context, child) {
                return Transform.rotate(
                  angle: _rotationAnimation.value,
                  child: SvgPicture.asset(
                    'assets/images/home_flow/1.svg',
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.contain,
                  ),
                );
              },
            ),
            AnimatedBuilder(
              animation: _rotationAnimation,
              builder: (context, child) {
                return Transform.rotate(
                  angle: -_rotationAnimation.value,
                  child: SvgPicture.asset(
                    'assets/images/home_flow/2.svg',
                    width: 195.0,
                    height: 195.0,
                    fit: BoxFit.contain,
                  ),
                );
              },
            ),
            AnimatedBuilder(
              animation: _rotationAnimation,
              builder: (context, child) {
                return Transform.rotate(
                  angle: _rotationAnimation.value * 0.5,
                  child: SvgPicture.asset(
                    'assets/images/home_flow/3.svg',
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.contain,
                  ),
                );
              },
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                height: 160,
                width: 160,
                color: AppColorScheme.screenBackground,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '3.24',
                        style: textTheme.headlineLarge!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text('kWh', style: textTheme.bodyMedium),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
