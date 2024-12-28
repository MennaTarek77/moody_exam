import 'package:flutter/material.dart';

class Exercise extends StatelessWidget {
  const Exercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Exercise',
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
                ImageIcon(
                  AssetImage("assets/icons/more.png"),
                  color: Color(0xff027A48),
                )
              ],
            )
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            exerciseCard(const Color(0xffF9F5FF), const Color(0xffB692F6), "Relaxation",
                "Relaxation"),
            exerciseCard(const Color(0xffFDF2FA), const Color(0xffFAA7E0), "Meditation",
                "Meditation"),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            exerciseCard(
                const Color(0xffFFFAF5), const Color(0xffFEB273), "Breathing", "Breathing"),
            exerciseCard(const Color(0xffF0F9FF), const Color(0xff7CD4FD), "Yoga", "Yoga"),
          ],
        ),
      ],
    );
  }

  Widget exerciseCard(
      Color color, Color iconColor, String imageName, String title) {
    return Container(
      width: 152,
      height: 56,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        ImageIcon(AssetImage("assets/icons/$imageName.png"), color: iconColor),
        const SizedBox(width: 12),
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        )
      ]),
    );
  }
}
