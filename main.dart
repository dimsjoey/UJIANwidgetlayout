import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const SingleChildScrollView(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    const SizedBox(height: 8.0,),
                    Text(
                      'Waflle',
                      style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.black45,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    TextSection(
                      description: 'Waffle is a dessert made from leavened batter or dough '
                          'cooked between two plates that are'
                          'patterned to give it a distinctive size,'
                          'ballerine Anna Pavlova '
                          'shape, and surface impression.'
                          'There are many variations based on the type of'
                          'waffle iron and the recipe used.',
                    ),
                    Bintang(),
                    const SizedBox(
                      height: 25.0,
                    ),
                    Icon2(),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Imagecake(image: 'images/waffle1.jpg'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 300,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          description,
          softWrap: true,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15.0
          ),
        ),
      ),
    );
  }
}

class Bintang extends StatelessWidget {
  const Bintang({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: Colors.black45,
          size: 18.0,
        ),
        Icon(
          Icons.star,
          color: Colors.black45,
          size: 18.0,
        ),
        Icon(
          Icons.star,
          color: Colors.black45,
          size: 18.0,
        ),
        Icon(
          Icons.star,
          color: Colors.black45,
          size: 18.0,
        ),
        Icon(
          Icons.star,
          color: Colors.black45,
          size: 18.0,
        ),
        const SizedBox(
          width: 50.0,
        ),
        Text(
          '170 Reviews',
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.black45,
          ),
        )
      ],
    );
  }
}

class Icon2 extends StatelessWidget {
  const Icon2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Icon(
              Icons.sd_card_outlined,
              color: Colors.green,
              size: 18.0,
            ),
            Text(
              'PREP',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.black45,
              ),
            ),
            const SizedBox(height: 8.0,),
            Text(
              '25 min',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.black45,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 35.0,
        ),
        Column(
          children: [
            Icon(
              Icons.access_alarms_outlined,
              color: Colors.green,
              size: 18.0,
            ),
            Text(
              'COOK',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.black45,
              ),
            ),
            const SizedBox(height: 8.0,),
            Text(
              '1 hr',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.black45,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 35.0,
        ),
        Column(
          children: [
            Icon(
              Icons.restaurant,
              color: Colors.green,
              size: 18.0,
            ),
            Text(
              'FEEDS',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.black45,
              ),
            ),
            const SizedBox(height: 8.0,),
            Text(
              '4-6',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.black45,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Imagecake extends StatelessWidget {
  const Imagecake({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(image, width: 600, height: 340, fit: BoxFit.cover);
  }
}
