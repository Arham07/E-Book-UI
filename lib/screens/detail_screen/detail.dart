import 'package:book_ui/commons/colors.dart';
import 'package:book_ui/models/book.dart';
import 'package:book_ui/screens/detail_screen/widgets/detail_book.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key, required this.book}) : super(key: key);
  final Book book;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DetailBook(
              book: book,
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_outlined,
          color: kFont,
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.more_horiz_outlined,
            color: kFont,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
