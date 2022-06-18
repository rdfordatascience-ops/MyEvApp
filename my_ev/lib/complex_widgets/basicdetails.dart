import 'package:flutter/cupertino.dart';

class BasicDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: [
        Column(
          children: [
            Container(
              child: const Text("Tejas Bagal"),
            ),
            Container(
              child: const Text("8847757987"),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              child: const Text("80 KMs"),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              child: const Text("40% Battery"),
            ),
          ],
        ),
      ],
      padding: const EdgeInsets.all(25),
    );
  }
}
