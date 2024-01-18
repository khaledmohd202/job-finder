import 'package:flutter/material.dart';
import 'package:job_finder/common/constants.dart';
import 'package:job_finder/screens/home_screen/widgets/home_app_bar.dart';
import 'package:job_finder/screens/home_screen/widgets/job_list.dart';
import 'package:job_finder/screens/home_screen/widgets/search_card.dart';
import 'package:job_finder/screens/home_screen/widgets/tag_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey.withOpacity(0.1),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeAppBar(),
              const SearchCard(),
              const TagList(),
              JobList(),
            ],
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        elevation: 0,
        backgroundColor: kSecondaryColor,
        onPressed: () {
      },
      child: const Icon(Icons.add, color: Colors.white,),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          // highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Theme.of(context).primaryColor,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 25,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.cases_outlined,
                size: 25,
              ),
              label: 'Case',
            ),
            BottomNavigationBarItem(
              icon: Text(''),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_outlined,
                size: 25,
              ),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                size: 25,
              ),
              label: 'Person',
            ),
          ],
        ),
      ),
    );
  }
}
