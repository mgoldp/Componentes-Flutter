import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              imageDesc: 'Un Hermoso Paisaje',
              imageUrl:
                  'https://astelus.com/wp-content/viajes/Lago-Moraine-Parque-Nacional-Banff-Alberta-Canada.jpg',
            ),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
              imageUrl:
                  'https://mymodernmet.com/wp/wp-content/uploads/2020/02/Landscape-Photographer-of-the-Year-Yang-Guang-1.jpg',
            ),
            SizedBox(
              height: 20,
            ),
            CustomCardType2(
              imageUrl:
                  'https://mymodernmet.com/wp/wp-content/uploads/2020/02/Landscape-Photographer-of-the-Year-Sander-Grefte.jpg',
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ));
  }
}
