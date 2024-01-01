import 'package:flutter/material.dart';
import 'package:device_manager_ui/pages/live_session/animation.dart';
// import 'package:flutter/material.dart';
import 'package:device_manager_ui/data/bookData.dart';
import 'package:device_manager_ui/components/myBookWithRating.dart';

// ignore: must_be_immutable
class BookInfo extends StatelessWidget {
  final BookData book;
  BookInfo({required this.book, super.key});
  List<BookData> booksRelated = [
    BookData('assets/t1.jpg', 'Born a Crime by Trevor Noah', 7.5, 'Trevor Noah',
        '2h 10m'),
    BookData('assets/n4.jpg', 'Cogheart', 5.6, 'Peter Bunzl', '3h 10m'),
    BookData(
        'assets/t4.jpg', 'Tebegna Ewnetoch', 4.7, 'Bewketu Seyum', '5h 10m'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    image: Image.asset(book.bookCover).image, fit: BoxFit.fill),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 50, horizontal: 17),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_vert_outlined,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                        image: DecorationImage(
                          image: Image.asset(book.bookCover).image,
                          fit: BoxFit.fill,
                        )),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.3),
              ),
              child: Column(
                children: [
                  Text(
                    book.bookTitle,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 14),
                  Text(
                    'Book by ${book.bookAuthor} | ${book.timeToFinish}',
                    style: const TextStyle(fontSize: 17),
                  ),
                  const SizedBox(height: 14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Conditionally build stars based on rating
                      ...List.generate(
                        _determineNumberOfStars(book.bookRating),
                        (index) => ratingIcon(Icons.star),
                      ),
                      // Add remaining empty stars if needed
                      ...List.generate(
                        5 - _determineNumberOfStars(book.bookRating),
                        (index) => ratingIcon(Icons.star_border_outlined),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: Text(
                            'Free',
                            style: TextStyle(fontSize: 26, color: Colors.grey),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        padding: const EdgeInsets.all(4),
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(Icons.favorite_border_outlined,
                            size: 35, color: Colors.grey),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        padding: const EdgeInsets.all(4),
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(Icons.share,
                            size: 30, color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 28,
                        width: 8,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Book Information',
                        style: TextStyle(fontSize: 22),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus alias itaque porro illum sequi aliquid ullam voluptate maxime recusandae culpa. Dolorum voluptates sit voluptatum qui',
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Container(
                        height: 28,
                        width: 8,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'About Author',
                        style: TextStyle(fontSize: 22),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus alias itaque porro illum sequi aliquid ullam voluptate maxime recusandae culpa. Dolorum voluptates sit voluptatum qui',
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'User Reviews',
                        style: TextStyle(fontSize: 22),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios),
                      )
                    ],
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 35,
                      backgroundImage: Image.asset('assets/pp.jpg').image,
                    ),
                    title: const Text('Nathaniel Abayneh'),
                    subtitle: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('this book is awesome💖'),
                        Text('Dec 31, 2023'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Related Books ',
                        style: TextStyle(fontSize: 28),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios),
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    height: 280,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: booksRelated.length,
                      itemBuilder: (context, index) {
                        return myBookWithRating(booksRelated[index], context);
                      },
                    ),
                  ),
                  const SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {
                      print('tapped');
                    },
                    onDoubleTap: () {
                      print('double tapped');
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(0, 6),
                              color: Colors.grey,
                              blurRadius: 5,
                              spreadRadius: 2,
                            ),
                          ]),
                      child: const Center(
                        child: Text(
                          'Start Reading',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 80)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Icon ratingIcon(IconData? iconData) {
    return Icon(
      iconData,
      color: Colors.orange,
      size: 25,
    );
  }

  int _determineNumberOfStars(double? rating) {
    if (rating! >= 7) {
      return 5; // Display 5 stars for ratings 5 or higher
    } else if (rating >= 6) {
      return 4; // Display 3 stars for ratings below 5
    } else if (rating >= 5) {
      return 3;
    } else {
      return 2;
    }
  }
}
