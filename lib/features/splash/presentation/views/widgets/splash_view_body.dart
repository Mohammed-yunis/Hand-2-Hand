import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hand2hand/constants.dart';
import 'package:hand2hand/core/utils/media_query.dart';

import '../../../../../core/utils/app_router.dart';
import 'slidinganimationtext.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>with SingleTickerProviderStateMixin  {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }


  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hand 2 Hand',
            style: TextStyle(
                fontFamily: 'splash',
                fontSize: SizeApp(context).width * 0.13,
                color: mainColor1),
          ),
          SizedBox(
            height: SizeApp(context).height * 0.25,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeApp(context).width * .2),
            child:SlideAnimatedText(slidingAnimation: slidingAnimation)
          ),
        ],
      ),
    );
  }
  void initSlidingAnimation() {
    animationController=AnimationController(vsync: this,duration:const Duration(milliseconds: 1500));
    slidingAnimation=Tween<Offset>(begin:const Offset(0,3) ,end:Offset.zero ).animate(animationController);
    animationController.forward();
  }
  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () async {
      GoRouter.of(context).go(AppRouter.onBoarding);
    });
  }
}
