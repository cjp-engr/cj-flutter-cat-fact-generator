import 'package:cat_facts/providers/api_cat_facts.dart';
import 'package:cat_facts/widgets/cat_facts_image.dart';
import 'package:flutter/material.dart';

class DisplayCatFactImageScreen extends StatefulWidget {
  static const routeName = 'display-cat-fact-image';
  const DisplayCatFactImageScreen({Key? key}) : super(key: key);

  @override
  State<DisplayCatFactImageScreen> createState() =>
      _DisplayCatFactImageScreenState();
}

class _DisplayCatFactImageScreenState extends State<DisplayCatFactImageScreen> {
  get futureWidget => CatFutureWidget().futureWidget();

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: queryData.size.height / 1.2,
            child: futureWidget,
          ),
          Expanded(
            child: FittedBox(
              alignment: Alignment.bottomCenter,
              fit: BoxFit.contain,
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 10,
                      left: 10,
                      bottom: 10,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          futureWidget;
                        });
                      },
                      child: const Text('Generate Cat Fact'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CatFutureWidget {
  final ApiCatFacts _apiCatFacts = ApiCatFacts();
  futureWidget() {
    return FutureBuilder(
      future: _apiCatFacts.getStates(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          Map results = snapshot.data as Map;
          return CatFactsImage(catResults: results);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
