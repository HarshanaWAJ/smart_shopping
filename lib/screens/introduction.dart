import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:smart_shopping/screens/home.dart';

class MyIntroductionScreen extends StatelessWidget {
  MyIntroductionScreen({super.key});

  final List<PageViewModel> pages = [
    //Page 1
    PageViewModel(
      title: "About Us",
      body:
          "At Smart-Shopping, we take pride in our dedicated team of professionals who are passionate about transforming your shopping experience. Since 2024, our diverse team has been committed to revolutionizing the way you shop",
      image: Center(
        child: Image.asset(
          'lib/images/1.png',
          scale: 1.0,
          height: 500.0,
          width: 500.0,
        ),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),

    //page 2
    PageViewModel(
      title: "We are on the TOP",
      body: "Streetwear influences high-end fashion.",
      footer: Container(
        padding: const EdgeInsets.all(50.0),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(
                255, 217, 0, 0.918), // Your desired background color
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            elevation: 2, // Elevation value
          ),
          child: const Text(
            "Browser",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      image: Center(
        child: Image.asset(
          'lib/images/2.png',
          scale: 1.0,
          fit: BoxFit.contain,
        ),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),

    //page 3
    PageViewModel(
      title: "24h-365 Days Service",
      body: "Shop remotely, style freely, 24/7, 365.",
      image: Center(
        child: Image.asset(
          'lib/images/3.png',
          scale: 1.0,
        ),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 215, 0, 100),
        centerTitle: true,
        title: const Text(
          "SMART - SHOPPING",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        shadowColor: Colors.black,
      ),
      body: IntroductionScreen(
        globalBackgroundColor: const Color.fromARGB(36, 255, 255, 0),
        pages: pages,
        dotsDecorator: const DotsDecorator(
          size: Size(10, 10),
          color: Color.fromRGBO(255, 217, 0, 0.918),
          activeSize: Size.square(15),
          activeColor: Color.fromRGBO(255, 0, 0, 128),
        ),

        //Done Button
        showDoneButton: true,
        done: const Text(
          "Done",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),

        //Skip Button
        showSkipButton: true,
        skip: const Text(
          "Skip",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
          ),
        ),

        //Next Button
        showNextButton: true,
        next: const Icon(
          Icons.arrow_forward_sharp,
          size: 20,
          color: Colors.black,
        ),

//====================================================//
        //On done Method
        onDone: () => onDone(context),
      ),
    );
  }

  //On done Funtion
  void onDone(context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => MyHome(),
      ),
    );
  }
}
