import 'package:flutter/material.dart';

class OnboardingCryptoPage extends StatefulWidget {
  const OnboardingCryptoPage({Key? key}) : super(key: key);

  @override
  _OnboardingCryptoPageState createState() => _OnboardingCryptoPageState();
}

class _OnboardingCryptoPageState extends State<OnboardingCryptoPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController(initialPage: 0);

    return Scaffold(
        backgroundColor: const Color(0xff1b232A),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: contents.length,
                  controller: _controller,
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (_, i) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          contents[i].image,
                          width: MediaQuery.of(context).size.width / 1.75,
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Text(
                          contents[i].title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w400, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Text(contents[i].description,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white38,
                                fontWeight: FontWeight.w300,
                              )),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(contents.length, (index) => buildDot(context, index)),
              ),
              const NextButton()
            ],
          ),
        ));
  }

  Container buildDot(BuildContext context, int index) {
    return Container(
        height: 10,
        width: 10,
        margin: const EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: index == currentIndex ? const Color(0xff777777) : const Color(0xff252E35),
        ));
  }
}

class NextButton extends StatelessWidget {
  const NextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 54,
        width: 180,
        margin: const EdgeInsets.all(40),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: const Color(0xff5ED5A8), boxShadow: [
          BoxShadow(
            color: const Color(0xff5ED5A8).withOpacity(.15),
            offset: const Offset(0, 10),
            blurRadius: 20,
            spreadRadius: 0,
          )
        ]),
        child: TextButton(
          child: const Text("Next", style: TextStyle(color: Colors.black)),
          onPressed: () {
            Navigator.popAndPushNamed(context, '/sign_up');
          },
        ));
  }
}

class OnboardingCrypto {
  String image;
  String title;
  String description;

  OnboardingCrypto(
      {this.image =
          "https://firebasestorage.googleapis.com/v0/b/crypto-64d0f.appspot.com/o/Group%2010239.png?alt=media&token=a6a0db77-a870-4125-a659-d000a6f0feb2",
      this.title = "Title",
      this.description =
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. "});
}

List<OnboardingCrypto> contents = [
  OnboardingCrypto(
      image: "https://firebasestorage.googleapis.com/v0/b/crypto-64d0f.appspot.com/o/Group%2010239.png?alt=media&token=a6a0db77-a870-4125-a659-d000a6f0feb2",
      title: "Trade whenever you want",
      description:
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. "),
  OnboardingCrypto(
      image: "https://firebasestorage.googleapis.com/v0/b/crypto-64d0f.appspot.com/o/Group%2010240.png?alt=media&token=bcf492fb-78b3-45eb-a4b7-d4fcdf6edb83",
      title: "Invest on hundreds of assets",
      description:
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. "),
  OnboardingCrypto(
      image: "https://firebasestorage.googleapis.com/v0/b/crypto-64d0f.appspot.com/o/Group%2010241.png?alt=media&token=7a929f0d-5eaf-440d-af5b-9ca996446d34",
      title: "Let us take care of the rest",
      description:
          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. "),
];
