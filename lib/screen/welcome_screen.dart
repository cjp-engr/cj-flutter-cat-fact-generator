import 'package:cat_facts/screen/display_cat_fact_image_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              'Cat Facts',
              style: Theme.of(context).textTheme.headline1,
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: FittedBox(
                alignment: Alignment.bottomCenter,
                fit: BoxFit.contain,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, DisplayCatFactImageScreen.routeName);
                  },
                  child: const Text('Click to Start'),
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
