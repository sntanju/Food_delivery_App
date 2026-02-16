import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {

    // text style
    var myPrimaryTextStyle = TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mySecondaryTextStyle = TextStyle(color: Theme.of(context).colorScheme.primary);

    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25, bottom: 25),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.secondary),
        ),
        padding: EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// delivery fee
            Column(
              children: [
                Text("\$0.99"),
                Text("Delivery fee"),
              ],
            ),

            /// delivery time
            Column(
              children: [
                Text("15-30 min"),
                Text("Delivery time"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
