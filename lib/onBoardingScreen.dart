import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class introscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('OnBoarding Screen'),
      ),
      body: IntroductionScreen(
        dotsFlex: 3,
        dotsDecorator:
            DotsDecorator(color: Colors.black, activeColor: Colors.pink),
        globalBackgroundColor: Colors.white,
        showNextButton: true,
        next: Text(
          'Next',
          style: TextStyle(color: Colors.pink),
        ),
        showBackButton: true,
        back: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.pink,
        ),
        // showSkipButton: true,
        // skip: Text('skip',style: TextStyle(color: Colors.pink),),
        // showDoneButton: true,
        done: Text(
          'Done',
          style: TextStyle(color: Colors.pink),
        ),
        onDone: () {},
        pages: [
          PageViewModel(
              image: Padding(
                padding: const EdgeInsets.only(top: 56.0),
                child: Image.asset('assets/images/relax.png'),
              ),
              title: 'ONBOARDING SCREEN PAGE 1',
              body: 'Body of indroduction page 1',
              footer: Text('@flutter'),
              // decoration: PageDecoration(pageColor: Colors.purple)
          ),
          PageViewModel(
              image: Padding(
                padding: const EdgeInsets.only(top: 56.0),
                child: Image.asset('assets/images/workspace.png'),
              ),
              title: 'ONBOARDING SCREEN PAGE 2',
              body: 'Body of indroduction page 2',
              footer: Text('@flutter')),
          PageViewModel(
              image: Padding(
                padding: const EdgeInsets.only(top: 56.0),
                child: Image.asset('assets/images/customer-service.png'),
              ),
              title: 'ONBOARDING SCREEN PAGE 3',
              body: 'Body of indroduction page 3',
              footer: Text('@flutter')),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: introscreen(),
  ));
}

//seminar