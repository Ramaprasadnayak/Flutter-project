import 'package:flutter/material.dart';

class PuzzlePage extends StatefulWidget {
  const PuzzlePage({super.key});
  @override
  PuzzlePageState createState() => PuzzlePageState();
}

class PuzzlePageState extends State<PuzzlePage> {
  // Initial positions - adjusted for better visibility
  double coinPositionX = 100.0, coinPositionY = 300.0;
  double chestPositionX = 120.0, chestPositionY = 150.0;
  bool isCoinPlacedCorrectly = false;

  // Size parameters
  final double coinSize = 80.0; // Increased from 50
  final double chestSize = 150.0; // Increased from 100
  final double placementThreshold = 40.0; // How close coin needs to be to chest

  void checkCoinPlacement(double x, double y) {
    // Calculate center points for more accurate detection
    double coinCenterX = x + coinSize/2;
    double coinCenterY = y + coinSize/2;
    double chestCenterX = chestPositionX + chestSize/2;
    double chestCenterY = chestPositionY + chestSize/2;

    // Check if coin center is near chest center
    bool isNearChest = 
        (coinCenterX - chestCenterX).abs() < placementThreshold && 
        (coinCenterY - chestCenterY).abs() < placementThreshold;

    setState(() {
      if (isNearChest) {
        isCoinPlacedCorrectly = true;
        // Center the coin perfectly in the chest
        coinPositionX = chestCenterX - coinSize/2;
        coinPositionY = chestCenterY - coinSize/2;
      } else {
        isCoinPlacedCorrectly = false;
        coinPositionX = x;
        coinPositionY = y;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Fun Puzzle"),
        backgroundColor: const Color.fromARGB(255, 239, 197, 10),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color.fromARGB(255, 239, 197, 10),
                    Colors.deepOrange.shade900
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: const Center(
                child: Text(
                  "The Jewel of Hampi",
                  style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          // Chest (always visible)
          Positioned(
            left: chestPositionX,
            top: chestPositionY,
            child: Image.asset(
              'assets/chest_with_hole.png', 
              width: chestSize, 
              height: chestSize,
            ),
          ),
          // Draggable coin (only when not placed correctly)
          if (!isCoinPlacedCorrectly)
            Positioned(
              left: coinPositionX,
              top: coinPositionY,
              child: Draggable(
                feedback: Image.asset(
                  'assets/ruby_coin.png', 
                  width: coinSize, 
                  height: coinSize
                ),
                childWhenDragging: Container(),
                onDragEnd: (details) {
                  checkCoinPlacement(
                    details.offset.dx,
                    details.offset.dy,
                  );
                },
                child: Image.asset(
                  'assets/ruby_coin.png', 
                  width: coinSize, 
                  height: coinSize
                ),
              ),
            ),
          // Static coin in chest (when placed correctly)
          if (isCoinPlacedCorrectly)
            Positioned(
              left: coinPositionX,
              top: coinPositionY,
              child: Image.asset(
                'assets/ruby_coin.png', 
                width: coinSize, 
                height: coinSize
              ),
            ),
          // Success message
          if (isCoinPlacedCorrectly)
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 200.0),
                child: Text(
                  "The secret is unlocked. The treasure is now in your hands!",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
        ],
      ),
    );
  }
}