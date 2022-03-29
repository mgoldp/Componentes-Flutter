import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
                min: 50,
                max: 400,
                activeColor: AppTheme.primary,
                value: _sliderValue,
                onChanged: (value) {
                  _sliderValue = value;
                  setState(() {});
                }),
            Image(
              image: const NetworkImage(
                  'https://w7.pngwing.com/pngs/502/54/png-transparent-marvel-vs-capcom-infinite-marvel-vs-capcom-3-fate-of-two-worlds-iron-man-ultimate-marvel-vs-capcom-3-carol-danvers-others-superhero-fictional-character-iron-thumbnail.png'),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
