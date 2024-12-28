import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FeatureCard extends StatefulWidget {
  const FeatureCard({super.key});

  @override
  State<FeatureCard> createState() => _FeatureCardState();
}

class _FeatureCardState extends State<FeatureCard> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
      3,
      (index) => Container(
        width: double.infinity,
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xffECFDF3),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        child: const Padding(
          padding: EdgeInsets.all(20.0),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Positive vibes',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff344054)),
                    ),
                    Text(
                      'Boost your mood with \n positive vibes',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    Row(
                      children: [
                        ImageIcon(
                          AssetImage("assets/icons/Play_button.png"),
                          color: Color(0xff027A48),
                        ),
                        Text(" 10 mins"),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Image(
                  image: AssetImage("assets/images/Character.png"),
                  // fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const SizedBox(height: 16),
        SizedBox(
          height: 200,
          child: PageView.builder(
            reverse: true,
            controller: controller,
            itemCount: pages.length,
            itemBuilder: (_, index) {
              return pages[index % pages.length];
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: SmoothPageIndicator(
            controller: controller,
            count: pages.length,
            effect: const WormEffect(
              dotHeight: 10,
              dotWidth: 10,
              activeDotColor: Color(0xff98A2B3),
              dotColor: Color(0xffD9D9D9),
              type: WormType.thinUnderground,
            ),
          ),
        ),
        const SizedBox(height: 24.0),
      ],
    );
  }
}
