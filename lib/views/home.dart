import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ui_project/views/top_bar.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final List<StaggeredTile> _cardTile = <StaggeredTile>[
    const StaggeredTile.count(1, 1),
    const StaggeredTile.count(1, 1.2),
    const StaggeredTile.count(1, 1),
    const StaggeredTile.count(1, 1.2),
    const StaggeredTile.count(1, 1.2),
    const StaggeredTile.count(1, 1),
    const StaggeredTile.count(1, 1),
  ];

  final List<Map<String, dynamic>> _listItems = [
    {'image': 'assets/images/Image1.jpg',
    'name': 'Ingrid Bergman ',
    'text': 'Selfie \nDare Accepted\n',
    'time': '23 Min Ago'},
    {'image': 'assets/images/Image2.jpg',
      'name': 'Meryl Streep ',
      'text': 'Pose in the \nlockdown without studio\n',
      'time': '23 Min Ago'},
    {'image': 'assets/images/Image3.jpg',
      'name': 'Hanah Jones ',
      'text': 'Photobooth \nat home done with #sis\n',
      'time': '23 Min Ago'},
    {'image': 'assets/images/Image4.jpg',
      'name': 'Misa Amane ',
      'text': 'Flying kiss \nto my ex boyfriend #dare\n',
      'time': '23 Min Ago'},
    {'image': 'assets/images/Image5.jpg',
      'name': 'Jason Cruz ',
      'text': '360 Degree \ntornado kick #challenge\n',
      'time': '23 Min Ago'},
    {'image': 'assets/images/Image6.jpg',
      'name': 'Meghan Trainor ',
      'text': 'All \nabout the bass #dare\n',
      'time': '23 Min Ago'},
    {'image': 'assets/images/Image7.jpg',
      'name': '',
      'text': '',
      'time': ''},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Image(
          image: AssetImage('assets/images/Image8.jpg'),
        ),
        title: const Text(
          'Feed',
          textScaleFactor: 1.2,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
                color: Colors.black54,
              ),
              const SizedBox(width: 15),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.mail_outline),
                color: Colors.black54,
              )
            ],
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                const TopBar(),
                const SizedBox(height: 15),
                Expanded(
                  child: StaggeredGridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    staggeredTiles: _cardTile,
                    children: _listItems
                        .map((item) => Card(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0))),
                              elevation: 4,
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        ),
                                        image: DecorationImage(
                                            image: AssetImage(item['image']),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                      height: 50,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Column(
                                                children: [
                                                  Center(
                                                    child: RichText(
                                                      maxLines: 3,
                                                        overflow: TextOverflow.clip,
                                                        textScaleFactor: 0.75,
                                                        text: TextSpan(
                                                            text: item['name'],
                                                          style: const TextStyle(fontWeight: FontWeight.bold,
                                                          color: Colors.black,
                                                          ),
                                                          children: [
                                                            TextSpan(
                                                              text: item['text'],
                                                              style: const TextStyle(
                                                                fontWeight: FontWeight.normal,
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text: item['time'],
                                                              style: const TextStyle(
                                                                color: Colors.red,
                                                                fontWeight: FontWeight.normal,
                                                                fontSize: 10
                                                              ),
                                                            ),
                                                          ]
                                                        ),
                                                      ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                CircleAvatar(
                                                  radius: 12,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(20),
                                                      image: DecorationImage(
                                                          image: AssetImage(item['image']),
                                                          fit: BoxFit.cover),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                  ),
                                ],
                              ),
                            ))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(19), topRight: Radius.circular(19)),
        child: BottomNavigationBar(
            showSelectedLabels: false,
            //showUnselectedLabels: false,
            //enableFeedback: false,
            backgroundColor: const Color(0xFF120532),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                backgroundColor: Color(0xFF12062F),
                icon: Icon(Icons.home_outlined),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.radio_button_checked_sharp),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.check_circle_outline_sharp),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: '',
              ),
            ]),
      ),
    );
  }
}
