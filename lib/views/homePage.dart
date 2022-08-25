import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel/widgets/customText.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 30, left: 5, right: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // !app bar section
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.menu),
                  CustomeText(
                    text: "Bostone",
                    color: Colors.orange.shade500,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://cdn.pixabay.com/photo/2016/11/29/20/22/girl-1871104__340.jpg'),
                          fit: BoxFit.cover),
                    ),
                  )
                ],
              ),
            ),

            // !hero section
            Container(
              padding: const EdgeInsets.only(right: 40, top: 10, left: 5),
              child: CustomeText(
                text: "Good food",
                color: Colors.black87,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 40, top: 10, left: 5),
              child: CustomeText(
                text: "Fast Delivery",
                color: Colors.black87,
              ),
            ),

            // !food categories
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Column(
                    children: [
                      const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://cdn.pixabay.com/photo/2020/06/08/16/49/pizza-5275191__340.jpg'),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomeText(text: "Pizza")
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
