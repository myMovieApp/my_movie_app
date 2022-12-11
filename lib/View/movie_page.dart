import 'package:flutter/material.dart';
import 'package:my_movie_app/View/home_page.dart';
import 'package:my_movie_app/View/search_page.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  static int _selectedIndex = 0;

  final List<Widget> _widgetsOptions = <Widget>[
    const HomePage(),
    const SearchPage(),
  ];

  onTapNavigationBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: _widgetsOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: const Color.fromRGBO(64, 66, 68, 1),
          currentIndex: _selectedIndex,
          onTap: onTapNavigationBar,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search_rounded),
            )
          ],
        ),
      ),
    );
  }
}
