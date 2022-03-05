import 'package:flutter/material.dart';

class CatFactsImage extends StatefulWidget {
  static const routeName = '/cat-facts';
  final Map catResults;
  const CatFactsImage({Key? key, required this.catResults}) : super(key: key);

  @override
  State<CatFactsImage> createState() => _CatFactsImageState();
}

class _CatFactsImageState extends State<CatFactsImage> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.amber[300],
      body: SafeArea(
        minimum: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Card(
              color: Colors.black45,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Image.network(
                  '${widget.catResults.values.elementAt(1)}',
                  height: queryData.size.height / 1.8,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                '${widget.catResults.values.elementAt(0)}',
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
