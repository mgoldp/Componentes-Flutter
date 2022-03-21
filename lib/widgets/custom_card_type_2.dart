import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: const [
          FadeInImage(
            image: NetworkImage('https://wallpaperaccess.com/full/1289981.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
          ),
        ],
      ),
    );
  }
}
