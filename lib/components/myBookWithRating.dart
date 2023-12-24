import 'package:flutter/material.dart';
import '../data/bookData.dart';

Widget myBookWithRating(BookData book) {
  return Container(
    margin: const EdgeInsets.only(right: 22),
    width: 135,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
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
            Positioned(
              right: 10,
              top: 10,
              child: Container(
                width: 30,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.orange,
                ),
                child: Column(children: [
                  const Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 17,
                  ),
                  Text(
                    book.bookRating.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ]),
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        Text(
          book.bookTitle,
          style: const TextStyle(fontSize: 20),
        )
      ],
    ),
  );
}
