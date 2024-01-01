import 'package:device_manager_ui/pages/live_session/book_store.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyAnimation extends StatelessWidget {
  const MyAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 150),
          Lottie.asset('assets/Animation - 1703867439704.json'),
          const SizedBox(height: 40),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return const MyBookStore();
              }));
            },
            child: Container(
                padding: const EdgeInsets.all(15),
                width: 300,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(10, 10),
                      color: Colors.black,
                      blurRadius: 5,
                      spreadRadius: 2,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.green.withOpacity(.8),
                        Colors.yellow.withOpacity(.5),
                        Colors.red.withOpacity(.8),
                      ]),
                ),
                child: const Column(
                  children: [
                    Text(
                      'WELCOME',
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    Text(
                      '(CLICK ME)',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
