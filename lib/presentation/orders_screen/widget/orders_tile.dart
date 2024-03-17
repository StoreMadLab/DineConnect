import 'package:flutter/material.dart';


class OrdersTile extends StatelessWidget {
  const OrdersTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "ONO.04",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Text(
              "Total: 304rs",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Icon(
                    Icons.edit_calendar,
                    size: 50,
                  ),
                ),

                Container(
                  child: Icon(
                      Icons.check_circle_outline,
                    size: 50,
                  ),
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}
