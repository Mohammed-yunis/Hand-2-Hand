import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hand2hand/constants.dart';

import '../../../../../core/utils/app_router.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top;
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hand 2 Hand',
            style: TextStyle(
                fontFamily: 'splash',
                fontSize: width * 0.13,
                color: mainColor1),
          ),
          SizedBox(
            height: height * 0.25,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: Text(
              'You can put a smile on someone\'s face',
              style: TextStyle(
                fontSize: width * 0.05,
                color: mainColor2,
                fontWeight: FontWeight.w700,
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  void navigateToHome() {
    Future.delayed(const Duration(milliseconds: 2), () async {
      GoRouter.of(context).go(AppRouter.onBoarding);
    });
  }
}
