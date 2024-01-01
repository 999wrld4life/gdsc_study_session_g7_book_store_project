import 'package:device_manager_ui/pages/live_session/bookinfo.dart';
import 'package:flutter/material.dart';
import '../data/bookData.dart';

Widget myBook(BookData book, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (BuildContext context) {
          return BookInfo(
            book: book,
          );
        }),
      );
    },
    child: Container(
      margin: const EdgeInsets.only(right: 22),
      width: 135,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 134,
            height: 180.5,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 6),
                  color: Colors.grey,
                  blurRadius: 5,
                  spreadRadius: 2,
                ),
              ],
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: Image.asset(book.bookCover).image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            book.bookTitle,
            style: const TextStyle(fontSize: 20),
          )
        ],
      ),
    ),
  );
}
