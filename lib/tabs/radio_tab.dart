import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/radio_body.png"),
          SizedBox(
            height: 50,
          ),
          Text(
            "إذاعة القرآن الكريم",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(
            height: 50,
          ),
          Image.asset("assets/images/play_icons_radio.png"),
        ],
      ),
    );
  }
}
