import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

// 1. The Stars Row
const stars = Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star, color: Colors.green),
    Icon(Icons.star, color: Colors.green),
    Icon(Icons.star, color: Colors.green),
    Icon(Icons.star, color: Colors.black),
    Icon(Icons.star, color: Colors.black),
  ],
);

// 2. The Ratings Container
final ratings = Container(
  padding: const EdgeInsets.all(20),
  child: const Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      stars,
      Text(
        '170 Reviews',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800,
          fontFamily: 'Roboto',
          letterSpacing: 0.5,
          fontSize: 20,
        ),
      ),
    ],
  ),
);

// 3. 💡 NEW: The Icon List Container (Prep, Cook, Feeds)
final iconList = Container(
  padding: const EdgeInsets.all(20),
  child: const Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        children: [
          Icon(Icons.kitchen, color: Colors.green),
          SizedBox(height: 8),
          Text('PREP:', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 4),
          Text('25 min'),
        ],
      ),
      Column(
        children: [
          Icon(Icons.timer, color: Colors.green),
          SizedBox(height: 8),
          Text('COOK:', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 4),
          Text('1 hr'),
        ],
      ),
      Column(
        children: [
          Icon(Icons.restaurant, color: Colors.green),
          SizedBox(height: 8),
          Text('FEEDS:', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 4),
          Text('4-6'),
        ],
      ),
    ],
  ),
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static const titleDesc = 'Strawberry Pavlova in Flutter';
  static const pavDesc =
      'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. It features a crisp crust and soft, light inside, topped with fruit and whipped cream.';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: titleDesc,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                // LEFT SIDE: The Text, Ratings, and Stats
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Strawberry Pavlova',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      
                      const Text(pavDesc),
                      const SizedBox(height: 16),
                      
                      // 💡 Look how incredibly clean this build method is now!
                      ratings,
                      iconList,
                    ],
                  ),
                ),
                
                const SizedBox(width: 16),
                
                // RIGHT SIDE: The Recipe Image
                Image.asset('assets/pavlova.png', width: 250, height: 250),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
