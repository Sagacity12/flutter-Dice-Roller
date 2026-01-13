import 'package:flutter/material.dart';
//import 'package:udemy_first_app/style_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatefulWidget {
   GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  var activeDiceImage = 'assets/dice-images/dice-2.png';

  void rollDice() {
    // Functionality to roll the dice will be implemented here
    activeDiceImage = 'assets/dice-images/dice-4.png';
    print('Changing image...');
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child:  Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          Image.asset(
            activeDiceImage, 
          width: 200 
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              // padding: const EdgeInsets.only( top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              ),
            ),
            child: const Text('Roll Dice'),
          )
          
          ],
        ),  
      ),
    );
  }
}
