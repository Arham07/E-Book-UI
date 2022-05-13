import 'package:book_ui/commons/colors.dart';
import 'package:book_ui/models/book.dart';
import 'package:book_ui/screens/home/widgets/staggered_gridView.dart';
import 'package:flutter/material.dart';

class CustomTab extends StatefulWidget {
  CustomTab({Key? key}) : super(key: key);
  Book? book;

  @override
  State<CustomTab> createState() => _CustomTabState();
}

class _CustomTabState extends State<CustomTab> with TickerProviderStateMixin {
  final tab = ['EBook', 'AudioBooks'];
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.03,
              vertical: MediaQuery.of(context).size.width * 0.03),
          height: 55,
          padding: const EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(5),
          ),
          child: TabBar(
            controller: tabController,
            indicator: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            labelColor: kFont,
            unselectedLabelColor: kFont,
            tabs: tab
                .map(
                  (e) => Tab(
                    child: Text(e),
                  ),
                )
                .toList(),
          ),
        ),
        Expanded(
          child: TabBarView(
            physics: const BouncingScrollPhysics(),
            controller: tabController,
            children: [
              StaggeredGridView(),
              StaggeredGridView(),
            ],
          ),
        )
      ],
    );
  }
}
