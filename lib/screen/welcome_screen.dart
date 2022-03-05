import 'package:cat_facts/screen/display_cat_fact_image_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/my_cat.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Card(
              color: Colors.amber[300],
              child: Text(
                'Cat Facts',
                style: Theme.of(context).textTheme.headline1,
                textAlign: TextAlign.center,
              ),
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
                  child: const Text(
                    'Click to Start',
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
