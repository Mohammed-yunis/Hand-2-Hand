import 'package:flutter/material.dart';

import '../../../../../core/utils/media_query.dart';

class SignUpOrIn extends StatelessWidget {
  const SignUpOrIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account ?',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: SizeApp(context).width * 0.025),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              'Sign Up',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: SizeApp(context).width * 0.025),
            )),
      ],
    );
  }
}
