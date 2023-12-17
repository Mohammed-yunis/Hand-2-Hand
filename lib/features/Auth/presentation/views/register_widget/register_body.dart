import 'package:flutter/material.dart';
import 'package:hand2hand/constants.dart';
import 'package:hand2hand/core/utils/clip_path.dart';
import 'package:hand2hand/core/utils/custom_app_bar.dart';
import 'package:hand2hand/core/utils/custom_auth_text_field.dart';
import 'package:hand2hand/core/utils/custom_rectangle_button.dart';
import 'package:hand2hand/core/utils/media_query.dart';

import 'photo_widget.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: ClipPathApp(context: context, w: 0.5, h: 0.7, r: 1),
          child: Container(
            width: SizeApp(context).width,
            height: SizeApp(context).height * 1.1,
            color: const Color(0xffC5EDF8),
          ),
        ),
         Padding(
           padding:  EdgeInsets.symmetric(horizontal: SizeApp(context).width * 0.06),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomAppBar(),
              const SizedBoxApp(h: 0.03),
              Text(
                'Sign up by filling the form below',
                style: TextStyle(
                  fontSize: SizeApp(context).width * 0.045,
                  fontWeight: FontWeight.w800,
                  color: mainColor1,
                ),
              ),
              const SizedBoxApp(h: 0.01),
              const PhotoWidget(),
              const SizedBoxApp(h: 0.04),
              const CustomAuthTextField(text: 'Name',icon: Icons.account_circle_outlined,),
              const SizedBoxApp(h: 0.025),
              const CustomAuthTextField(text: 'Email ID',icon: Icons.alternate_email_outlined),
              const SizedBoxApp(h: 0.025),
              const CustomAuthTextField(text: 'Password',icon: Icons.lock_outline_rounded,),
              const SizedBoxApp(h: 0.025),
              const CustomAuthTextField(text: 'Confirm Password',icon: Icons.lock_outline_rounded,),
              const SizedBoxApp(h: 0.025),
              const CustomAuthTextField(text: 'Phone number',icon: Icons.call_sharp,),
              const SizedBoxApp(h: 0.035),
              const CustomRectangleButton(text: 'Sign up'),
              const SizedBoxApp(h: 0.05),
            ],
        ),
         )
      ],
    );
  }
}
