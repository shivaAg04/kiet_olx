import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              Container(
                color: Colors.orange,
                child: Lottie.network(
                    'https://assets3.lottiefiles.com/packages/lf20_2oranrew.json'),
              ),
              Container(
                color: Colors.orange,
                child: Lottie.network(
                    'https://assets6.lottiefiles.com/private_files/lf30_9kdbftpx.json'),
              ),
              Container(
                color: Colors.orange,
                child: Column(
                  children: [
                    Center(
                      child: Lottie.network(
                          'https://assets5.lottiefiles.com/packages/lf20_cgjrfdzx.json'),
                    ),
                    Container(
                      alignment: Alignment(-1, -1),
                      child: FloatingActionButton(
                        backgroundColor: Color(0xFF00BCD4),
                        onPressed: () {},
                        child: Icon(
                          Icons.arrow_forward,
                          size: 35,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment(0.0, .9),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: const JumpingDotEffect(
                dotHeight: 16,
                dotColor: Color.fromARGB(255, 255, 255, 255),
                activeDotColor: Color(0xFF00BCD4),
                dotWidth: 16,
                jumpScale: .7,
                verticalOffset: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
