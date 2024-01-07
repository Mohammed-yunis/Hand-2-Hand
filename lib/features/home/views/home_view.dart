import 'package:flutter/material.dart';

import '../../../core/utils/functions/assets_service.dart';
import '../../../core/utils/media_query.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final w = SizeApp(context).width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,

          /// The icon of the drawer
          leading: Padding(
            padding: EdgeInsets.only(left: w * .04),
            child: Icon(
              Icons.menu_outlined,
              size: SizeApp(context).width * .11,
            ),
          ),
          actions: [
            ///The icon of notification and the image
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Image.asset(AssetsService.notification)),
                SizedBox(
                  width: w * .02,
                ),
                CircleAvatar(
                  radius: w * .05,
                  backgroundImage: const AssetImage(AssetsService.onBoard1),
                ),
                SizedBox(
                  width: w * .02,
                ),
              ],
            )
          ],
        ),
        body: const HomeViewBody(),
      ),
    );
  }
}
