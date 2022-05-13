import 'package:book_ui/commons/colors.dart';
import 'package:book_ui/models/book.dart';
import 'package:flutter/material.dart';

class BookCover extends StatelessWidget {
  BookCover({Key? key, required this.book}) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.02),
      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05),
      height: 225,
      child: Stack(
        children: [
          Container(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(
                  50,
                ),
                bottomLeft: Radius.circular(
                  50,
                ),
              ),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(
                  50,
                ),
                bottomLeft: Radius.circular(
                  50,
                ),
              ),
              child: Image.asset(
                book.imgUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 160,
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(10)),
              child: const Icon(
                Icons.info_outline,
                size: 22,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 210,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: kFont,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: const [
                  Icon(
                    Icons.play_arrow_outlined,
                    size: 22,
                    color: Colors.white,
                  ),
                  Text(
                    'Audio Book',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
