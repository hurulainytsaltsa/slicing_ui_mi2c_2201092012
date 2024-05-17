import 'package:flutter/material.dart';
import 'package:slicing_ui_mi2c/latihan/page_category.dart';
import 'package:slicing_ui_mi2c/latihan/page_course.dart';
import 'package:slicing_ui_mi2c/latihan/page_home.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> with SingleTickerProviderStateMixin{
  TabController? tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: const [
          PageHome(),
          PageCourse(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: tabController?.index ?? 0,
        onTap: (index) {
          tabController?.animateTo(index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle),
            label: "My Course",
          ),
        ],
      ),
    );
  }
}
