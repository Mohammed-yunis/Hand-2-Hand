import 'package:flutter/material.dart';

import '../../../../core/utils/functions/assets_service.dart';

class MyListItem2 extends StatelessWidget {
  final int itemNumber;

  const MyListItem2(this.itemNumber, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.2),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12), topRight: Radius.circular(12)),
            ),
            width: 280,
            height: 330,
          ),
          Column(
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

                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Educate Every child. Join Our Mission for Quality Education:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      height: 6,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(3)),
                    ),
                    const SizedBox(height: 10.0),
                    const Row(
                      children: [
                        Text(
                          'Target: ',
                          style: TextStyle(color: Colors.grey, fontSize: 17),
                        ),
                        Text(
                          '150,000 \$ ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
