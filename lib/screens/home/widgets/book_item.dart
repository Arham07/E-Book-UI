import 'package:book_ui/models/book.dart';
import 'package:book_ui/screens/detail_screen/detail.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem({Key? key, required this.book}) : super(key: key);
  final Book book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Detail(book: book,),
        ),
      ),
      child: Container(
        // height: book.height as double,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(book.imgUrl), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
