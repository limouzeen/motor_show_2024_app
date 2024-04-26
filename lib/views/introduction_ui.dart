import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:motor_show_2024_app/views/home_ui.dart';

class IntroductionUI extends StatefulWidget {
  const IntroductionUI({super.key});

  @override
  State<IntroductionUI> createState() => _IntroductionUIState();
}

class _IntroductionUIState extends State<IntroductionUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IntroductionScreen(
          globalBackgroundColor: Colors.black87,
          autoScrollDuration: 2000,
          infiniteAutoScroll: true,
          scrollPhysics: BouncingScrollPhysics(),
          pages: [
            showPageViews(
              'TOYOTA',
              'assets/images/tyt_camry.jpg',
              1,
              0.5,
              'CAMRY\n\n ',
              'xxxxxxxxxxxxxxxxxxxxxx',
            ),
            showPageViews(
              'MITSUBISHI',
              'assets/images/pajero.png',
              1,
              0.5,
              'PAJERO\n\n ',
              'xxxxxxxxxxxxxxxxxxxxxx',
            ),
            showPageViews(
              'HONDA',
              'assets/images/hd_accord.png',
              1,
              0.5,
              'ACCORD\n\n ',
              'xxxxxxxxxxxxxxxxxxxxxx',
            ),
            showPageViews(
              'MAZDA',
              'assets/images/mzd_cx5.png',
              1,
              0.5,
              'CX5\n\n ',
              'xxxxxxxxxxxxxxxxxxxxxx',
            ),
          ],
          showSkipButton: true,
          skip: Text(
            'Skip',
            style: TextStyle(
              color: Color.fromARGB(255, 71, 16, 137),
            ),
          ),
          onSkip: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeUI(),
            ),
          ),
          dotsDecorator: DotsDecorator(
            size: Size(
              MediaQuery.of(context).size.width * 0.025,
              MediaQuery.of(context).size.height * 0.025,
            ),
            color: Color.fromARGB(255, 142, 165, 241),
            activeSize: Size(
              MediaQuery.of(context).size.width * 0.025,
              MediaQuery.of(context).size.height * 0.025,
            ),
            activeColor: Color.fromARGB(255, 71, 16, 137),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(25.0),
              ),
            ),
          ),
          next: Icon(
            Icons.arrow_forward,
            color: Color.fromARGB(255, 71, 16, 137),
          ),
          nextFlex: 0,
          done: Text(
            'Done',
            style: TextStyle(
              color: Color.fromARGB(255, 71, 16, 137),
            ),
          ),
          onDone: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomeUI(),
            ),
          ),
        ),
      ),
    );
  }

  PageViewModel showPageViews(ttxt, img, w, h, txt1, txt2) {
    return PageViewModel(
      titleWidget: SafeArea(
        child: Text(
          ttxt,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height * 0.04,
            color: Colors.deepPurple,
          ),
        ),
      ),
      image: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          img,
          width: MediaQuery.of(context).size.width * w,
          height: MediaQuery.of(context).size.height * h,
        ),
      ),
      bodyWidget: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: txt1,
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: MediaQuery.of(context).size.height * 0.035,
                  color: Colors.deepPurple[200]),
            ),
            TextSpan(
              text: txt2,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.022,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
