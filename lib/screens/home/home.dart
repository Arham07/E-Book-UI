import 'package:book_ui/commons/colors.dart';
import 'package:book_ui/screens/home/widgets/custom_tab.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var tabIndex = 0;
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: CustomTab(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(
          Icons.menu_rounded,
          color: kFont,
        ),
        onPressed: () {},
      ),
      title: const Text(
        'All Books',
        style:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: kFont),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(
            Icons.search_outlined,
            color: kFont,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
