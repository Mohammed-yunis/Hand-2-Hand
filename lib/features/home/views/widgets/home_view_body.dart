import 'package:flutter/material.dart';
import 'package:hand2hand/constants.dart';
import 'package:hand2hand/core/utils/functions/assets_service.dart';

import 'catigory_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top;
    double width = MediaQuery.of(context).size.width;
    return ListView(
      padding: EdgeInsets.all(width * .05),
      physics: const BouncingScrollPhysics(),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.menu_outlined,
              size: width * .11,
            ),
            Row(
              children: [
              IconButton(onPressed: (){}, icon:Image.asset(AssetsService.notification) ),
                SizedBox(
                  width: width * .02,
                ),
                CircleAvatar(
                  radius: 20,
                backgroundImage: AssetImage(AssetsService.onBoard1),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: height * .03,
        ),
        Row(
          children: [
            Text(
              'Hello, ',
              style:
                  TextStyle(fontSize: width * .06, fontWeight: FontWeight.bold),
            ),
            Text(
              'Lenardo',
              style: TextStyle(color: mainColor1, fontSize: width * .06),
            )
          ],
        ),
        SizedBox(height: height * .01),
        Padding(
          padding: EdgeInsets.only(left: width * .04),
          child: const Text('what do you want to donate today?'),
        ),
        SizedBox(height: height * .025),
        TextField(
          decoration: InputDecoration(
            hintText: 'Search Campaign',
            contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
            prefixIcon: Icon(
              Icons.search,
              size: width * .08,
            ),
            suffixIcon: IconButton(
              icon: Row(
                children: [
                  Container(
                    height: height * .03,
                    color: mainColor2,
                    width: width * .003,
                  ),
                  SizedBox(
                    width: width * .01,
                  ),
                  const Icon(
                    Icons.mic,
                  ),
                ],
              ),
              onPressed: () {
                // Handle mic icon tap
                print('Mic icon tapped');
              },
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
        SizedBox(height: height * .015),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: width * .05),
              child: const Text(
                'Favourite categories',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  Text(
                    'See All ',
                    style: TextStyle(
                        color: mainColor1, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: mainColor1,
                  )
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: height * .01),
        SizedBox(
          height: height * .15,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (context, index) {
              return MyListItem(index + 1); // Add 1 to start index from 1
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: width * .05),
          child: Text(
            'Recommend for you',
            style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: width * .04),
          ),
        ),
        SizedBox(
          height: 500,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              return MyListItem2(index + 1); // Add 1 to start index from 1
            },
          ),
        ),
      ],
    );
  }
}

class MyListItem2 extends StatelessWidget {
  final int itemNumber;

  MyListItem2(this.itemNumber);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 280,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.2),
              borderRadius: BorderRadius.circular(12.0),
              image: const DecorationImage(
                image: AssetImage(AssetsService.homeImage),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                const Positioned(
                  top: 10.0,
                  right: 10.0,
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 5,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        'Active',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 10.0,
                  right: 10.0,
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        color: Colors.green,
                        child: const Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Container(
                        height: 30,
                        width: 30,
                        color: Colors.green,
                        child: const Icon(
                          Icons.account_balance_wallet_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.grey.withOpacity(.2),
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Educate Every child. Join Our Mission for Quality Education:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  height: 6,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(3)),
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Text(
                      'Target: ',
                      style: TextStyle(color: Colors.grey,fontSize: 17),
                    ),
                    Text(
                      '150,000 \$ ',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
