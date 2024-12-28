import 'package:flutter/material.dart';

import '../widgets/exercise.dart';
import '../widgets/feature_card.dart';
import '../widgets/feeling_list.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Image(
            image: AssetImage('assets/images/logo.png'),
            width: 140,
            height: 50,
            fit: BoxFit.fill,
          ),
          actions: const [
            ImageIcon(
              AssetImage('assets/icons/notification.png'),
              size: 50,
              color: Color(0xff101828),
            )
          ],
        ),
        body: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24),
              Row(children: [
                Text(
                  'Hello , ',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff371B34)),
                ),
                Text(
                  'Sara Rose',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff371B34)),
                )
              ]),
              FeelingList(),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                Text(
                  'Feature',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff371B34)),
                ),
                Row(
                  children: [
                    Text(
                      'See more',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff027A48)),
                    ),
                    ImageIcon(AssetImage("assets/icons/more.png"),color:Color(0xff027A48) ,)
                  ],
                )
              ],),
              FeatureCard(),
              Exercise(),

            ]),
      ),
    );
  }
}
