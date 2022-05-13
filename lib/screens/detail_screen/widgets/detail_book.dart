import 'package:book_ui/commons/colors.dart';
import 'package:book_ui/models/book.dart';
import 'package:book_ui/screens/detail_screen/widgets/book_cover.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetailBook extends StatelessWidget {
  DetailBook({Key? key, required this.book}) : super(key: key);

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                book.type,
                style: const TextStyle(
                    color: Colors.deepOrange, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                book.name,
                style: const TextStyle(fontSize: 24, height: 1.2, color: kFont),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                          text: 'Published from ',
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextSpan(
                          text: book.publisher,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, color: kFont),
                        )
                      ],
                    ),
                  ),
                  Text(
                    DateFormat.yMMMd()
                        .format(book.date),
                    style: const TextStyle(
                        color: Colors.grey),
                  ),
                ],
              ),

            ],
          ),
        ),
        BookCover(book: book,),
      ],
    );
  }
}
