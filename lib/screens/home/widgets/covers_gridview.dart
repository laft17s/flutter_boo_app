import 'package:book_app/models/book.dart';
import 'package:book_app/screens/home/widgets/book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CoversGridView extends StatelessWidget {
  final int selected;
  final PageController pageController;
  final Function callback;

  CoversGridView({
    Key? key,
    required this.selected,
    required this.pageController,
    required this.callback,
  }) : super(key: key);

  final bookList = Book.generateBooks();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children: [
          StaggeredGridView.countBuilder(
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            crossAxisCount: 4,
            itemCount: bookList.length,
            itemBuilder: (_, index) => BookItem(
              book: bookList[index],
            ),
            staggeredTileBuilder: (_) => const StaggeredTile.fit(2),
          ),
          Container(),
          Container(),
        ],
      ),
    );
  }
}
