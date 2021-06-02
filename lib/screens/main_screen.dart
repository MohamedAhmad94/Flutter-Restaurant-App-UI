import 'package:flutter/material.dart';
import 'package:flutter_restaurant_app/screens/home.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final PageController? _pageController = PageController();
  int _selectedPage = 0;

  List<IconData> icons = [
    Icons.home,
    Icons.label,
    Icons.add,
    Icons.notifications,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: List.generate(5, (index) => Home()),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 7.0),
            buildTapIcon(0),
            buildTapIcon(1),
            buildTapIcon(2),
            buildTapIcon(3),
            buildTapIcon(4),
            SizedBox(width: 7.0),
          ],
        ),
        color: Theme.of(context).primaryColor,
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: Icon(Icons.add),
        onPressed: () => _pageController!.jumpToPage(2),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  void navigationTapped(int? page) {
    _pageController!.jumpToPage(page!);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController!.dispose();
  }

  void onPageChanged(int? page) {
    setState(() {
      _selectedPage = page!;
    });
  }

  buildTapIcon(int? index) {
    if (index == 2) {
      return IconButton(
        onPressed: () {},
        icon: Icon(
          icons[index!],
          size: 25.0,
          color: Colors.transparent,
        ),
      );
    } else {
      return IconButton(
        onPressed: () => _pageController!.jumpToPage(index!),
        color: _selectedPage == index
            ? Theme.of(context).accentColor
            : Theme.of(context).textTheme.caption!.color,
        icon: Icon(
          icons[index!],
          size: 25.0,
        ),
      );
    }
  }
}
