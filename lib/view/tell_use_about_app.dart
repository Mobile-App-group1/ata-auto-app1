import 'package:ata_auto_app/responsive/responsive.dart';
import 'package:ata_auto_app/view/mutiscreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Tell_User extends StatelessWidget {
  Tell_User({super.key});
  final introKey = GlobalKey<IntroductionScreenState>();
  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => RoutesPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IntroductionScreen(
        key: introKey,
        globalBackgroundColor: Colors.white,
        allowImplicitScrolling: true,
        autoScrollDuration: 3000,
        infiniteAutoScroll: true,
        pages: [
          PageViewModel(
            image: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('asset/Drawer.jpg'),
            ),
            title: "Controll app",
            body:
                "For user want to change languese sing in sing up account and exite app",
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "Information and controll app",
            body: "Your information and controll app",
            image: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('asset/Controll app.jpg'),
            ),
            decoration: pageDecoration,
          ),
          PageViewModel(
            title: "User Buy Product",
            body: "User Read the pre-shopping instructions",
            image: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('asset/buy product.jpg'),
            ),
            decoration: pageDecoration,
          ),
          PageViewModel(
            image: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('asset/traing​Rather than.jpg'),
            ),
            title: "for Training Rather ",
            body: "if you want to learn about Car repairer",
            decoration: pageDecoration,
          ),
          PageViewModel(
            image: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('asset/buy videro training.jpg'),
            ),
            title: "Buy Video",
            body: "If user want to buy video Read the safety ",
            decoration: pageDecoration,
          ),
          PageViewModel(
            image: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('asset/buycours.jpg'),
            ),
            title: "Cours",
            body: "Buy cours in learn about repare car in garage",
            decoration: pageDecoration,
          ),
        ],
        onDone: () => _onIntroEnd(context),
        onSkip: () => _onIntroEnd(context), // You can override onSkip callback
        showSkipButton: true,
        skipOrBackFlex: 0,
        nextFlex: 0,
        showBackButton: false,
        back: const Icon(Icons.arrow_back),
        skip: const Text('Skip',
            style: TextStyle(fontWeight: FontWeight.w600, color: colorsWhite)),
        next: const Icon(
          Icons.arrow_forward,
          color: colorsWhite,
        ),
        done: const Text('Done',
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
        curve: Curves.fastLinearToSlowEaseIn,
        controlsMargin: const EdgeInsets.all(16),
        controlsPadding: kIsWeb
            ? const EdgeInsets.all(12.0)
            : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
        dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0),
          color: colorsWhite,
          activeSize: Size(22.0, 10.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
        ),
        dotsContainerDecorator: ShapeDecoration(
          color: Colors.blue.shade400,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        ),
      ),
    );
  }
}
