import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 2.5,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
      ),
      children: [
        InkWell(
          onTap: () => {},
          splashColor: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            padding: EdgeInsets.all(10), //temporary jugaad
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.blue.shade300,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tejas Bagal",
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
              
                Text(
                  "8847757987",
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () => {},
          splashColor: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            padding: EdgeInsets.all(10), //temporary jugaad
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey.shade400,
            ),
            child: Column(
              children: [
                Text(
                  "80 Kms",
                  style: TextStyle(
                    fontSize: 30
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () => {},
          splashColor: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            padding: EdgeInsets.all(10), //temporary jugaad
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.red,
            ),
            child: Column(
              children: [
                  Text(
                  "40 %",
                  style: TextStyle(
                    fontSize: 35
                  ),
                ),
              ],
            ),
          ),
        ),
        FloatingActionButton(
              onPressed: (){},
              child: Icon(Icons.flash_on, size: 50),
              backgroundColor: Theme.of(context).primaryColor,
              foregroundColor: Colors.white,
            ),
      ],
      padding: const EdgeInsets.all(25),
    );
  }
}
