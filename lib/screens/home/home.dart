import 'package:book_app/constants/colors.dart';
import 'package:book_app/screens/home/widgets/covers_gridview.dart';
import 'package:book_app/screens/home/widgets/custom_tab.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int tabIndex = 0;
  int buttonIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          CustomTabWidget(
            selected: tabIndex,
            callback: (int index) {
              setState(() {
                tabIndex = index;
              });
              pageController.jumpToPage(index);
            },
          ),
          Expanded(
            child: CoversGridView(
              pageController: pageController,
              selected: tabIndex,
              callback: (int index) => setState(() {
                tabIndex = index;
              }),
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu_rounded),
        color: kFont,
      ),
      title: const Text(
        'All Books',
        style: TextStyle(
          color: kFont,
          fontSize: 18,
        ),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search_outlined),
          color: kFont,
        ),
      ],
    );
  }

  Widget _buildBottomNavigationBar() {
    final buttons = [
      Icons.home_outlined,
      Icons.analytics_outlined,
      Icons.keyboard_voice_outlined,
      Icons.bookmark_border_outlined,
      Icons.person_outline,
    ];

    final width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width,
      height: 50.0,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => GestureDetector(
          onTap: () => setState(() {
            buttonIndex = index;
          }),
          child: Container(
            width: (width - 40.0) / 5,
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            decoration: buttonIndex == index
                ? const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 3.0,
                        color: Colors.deepPurple,
                      ),
                    ),
                  )
                : null,
            child: Icon(
              buttons[index],
              size: 30.0,
              color: buttonIndex == index ? kFont : Colors.grey[400],
            ),
          ),
        ),
        separatorBuilder: (_, index) => const SizedBox(
          width: 10,
        ),
        itemCount: buttons.length,
      ),
    );
  }
}
