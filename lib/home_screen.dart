import 'package:flutter/material.dart';

import 'components/add_hastags.dart';
import 'screens/list_view.dart';
import 'screens/message_view.dart';
import 'screens/screen_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomNavigationBar"),
        centerTitle: true,
      ),
      body: PageView(
        onPageChanged: (index) {
          setState(() => _currentIndex = index);
        },
        controller: _pageController,
        children: const <Widget>[
          ScreenView(),
          ListViewAstags(),
          MessageView(),
        ],
      ),
      floatingActionButton: const AddHashtagsComponent(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(_currentIndex);
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Accueil",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Hastags",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.send),
            label: "Message",
          ),
        ],
      ),
    );
  }
}
