import 'package:flutter/material.dart';
import 'package:hand2hand/constants.dart';

class RightPart extends StatelessWidget {
  const RightPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: TextButton(
        onPressed: () {},
        child: Text(
          'Forget password?',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: mainColor1,
          ),
        ),
      ),
    );
  }
}
