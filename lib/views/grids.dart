import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Grids extends StatelessWidget {
   Grids({Key? key}) : super(key: key);

  final List<String> _listItems = [
    'assets/images/Image1.jpg',
    'assets/images/Image2.jpg',
    'assets/images/Image3.jpg',
    'assets/images/Image4.jpg',
    'assets/images/Image5.jpg',
    'assets/images/Image6.jpg',
    'assets/images/Image7.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('H'),
      ),
      body: Expanded(
        child: GridView.count(
            crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: _listItems.map((item) => Card(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(item),
                  fit: BoxFit.cover
                ),
              ),
            ),
          )).toList(),
        ),
      ),
    );
  }
}


