import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          children: [
            OutlinedButton(
              onPressed: () {},
              child: const Text('#Trending',
                textScaleFactor: 0.7,
                style: TextStyle(
                  color: Colors.white,
                ),),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.red,
                fixedSize: const Size.fromWidth(95),
                side: const BorderSide(
                  color: Color(0xF5F51E1E),
                ),
                shape: const StadiumBorder(),
              ),
            ),
            const SizedBox(width: 15),
            OutlinedButton(
              onPressed: () {},
              child: const Text('#Food',
                textScaleFactor: 0.7,
                style: TextStyle(
                  color: Colors.black,
                ),),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                fixedSize: const Size.fromWidth(95),
                side: const BorderSide(
                  color: Color(0xF5F51E1E),
                ),
                shape: const StadiumBorder(),
              ),
            ),
            const SizedBox(width: 15),
            OutlinedButton(
              onPressed: () {},
              child: const Text('#Activity',
                textScaleFactor: 0.7,
                style: TextStyle(
                  color: Colors.black,
                ),),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                fixedSize: const Size.fromWidth(95),
                side: const BorderSide(
                  color: Color(0xF5F51E1E),
                ),
                shape: const StadiumBorder(),
              ),
            ),
            const SizedBox(width: 15),
            OutlinedButton(
              onPressed: () {},
              child: const Text('#Shopping',
                textScaleFactor: 0.7,
                style: TextStyle(
                  color: Colors.black,
                ),),
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                fixedSize: const Size.fromWidth(95),
                side: const BorderSide(
                  color: Color(0xF5F51E1E),
                ),
                shape: const StadiumBorder(),
              ),
            ),
            const SizedBox(width: 15),
          ],
        ),
      ),
    );
  }
}

