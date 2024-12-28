import 'package:flutter/material.dart';

class FeelingList extends StatelessWidget {
  const FeelingList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 12,
        ),
        const Text(
          'How are you feeling today ?',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: Color(0xff371B34)),
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              feelings("Love"),
              const SizedBox(width: 30),
              feelings("Cool"),
              const SizedBox(width: 30),
              feelings("Happy"),
              const SizedBox(width: 30),
              feelings("Sad"),
              const SizedBox(width: 30),
              feelings("Stress"),
              const SizedBox(width: 30),
              feelings("Angry"),
            ],
          ),
        ),
        const SizedBox(height: 40,)
      ],
    );
  }

  Widget feelings(String feeling) {
    return Column(
      children: [
        Image(image: AssetImage("assets/images/${feeling.toLowerCase()}.png")),
        const SizedBox(
          height: 8,
        ),
        Text(
          feeling,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}
