import 'package:bookly_app/core/utils/app_images.dart';
import 'package:bookly_app/feature/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  /// Animation controller for the sliding animation.//+
  late AnimationController animationController;
//+
  /// Animation for the sliding text widget.//+
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(Assets.assetsImagesLogo),
        SlidingText(
          slidingAnimation: slidingAnimation,
          text: "Read Free Books",
        )
      ],
    );
  }

  /// Initializes the sliding animation.//+
  void initSlidingAnimation() {
    animationController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();
  }

  /// Handles the transition to the home page.//+
  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).push('/HomeView');
      // Get.to(
      //   () => const HomeView(),
      //   transition: Transition.fade,
      //   duration: KTransitionDuration,
      // );
    });
  }
}
