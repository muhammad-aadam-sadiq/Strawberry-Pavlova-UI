import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // 💡 Converted to static const and camelCase to follow standard Dart conventions
  static const titleDesc = 'Strawberry Pavlova in Flutter';
  static const pavDesc =
      'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. It features a crisp crust and soft, light inside, topped with fruit and whipped cream.';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: titleDesc,
      home: Scaffold(
        // 💡 Added SafeArea & Padding so it doesn't get stuck under the phone's notch
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              // 💡 Removed MainAxisSize.min so the Row can stretch across the screen
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 💡 Wrapped the ENTIRE Column in Expanded to prevent text overflow
                const Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Strawberry Pavlova',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 12), // Added spacing
                      
                      // 💡 Removed the crash-causing 'Expanded' from this Text widget
                      Text(pavDesc), 
                      
                      SizedBox(height: 16), // Added spacing
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.star, color: Colors.green),
                          Icon(Icons.star, color: Colors.green),
                          Icon(Icons.star, color: Colors.green),
                          Icon(Icons.star, color: Colors.black),
                          Icon(Icons.star, color: Colors.black),
                          SizedBox(width: 8), // Added space between stars and text
                          Text(
                            '170 Reviews',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Roboto',
                              letterSpacing: 0.5,
                              fontSize: 16, // Scaled down slightly for better fit
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24), // Added spacing
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.kitchen, color: Colors.green),
                              Text('PREP:'),
                              Text('25 min'),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.timer, color: Colors.green),
                              Text('COOK:'),
                              Text('1 hr'),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.restaurant, color: Colors.green),
                              Text('FEEDS:'),
                              Text('4-6'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(width: 5), // Added gap between text and image
                
                // 💡 Scaled down to 250 to ensure it actually fits on a mobile screen alongside the text!
                Image.asset('assets/pavlova.png', width: 250, height: 250), 
              ],
            ),
          ),
        ),
      ),
    );
  }
}