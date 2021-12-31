import 'package:flutter/material.dart';

class SignUpSuccessPage extends StatelessWidget {
  const SignUpSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1b232A),
      body: SafeArea(
          child: Column(children: [
        const SizedBox(
          height: 100,
        ),
        Image.network("https://firebasestorage.googleapis.com/v0/b/crypto-64d0f.appspot.com/o/astro4.png?alt=media&token=ae44c9dc-aed1-444d-b117-4d2c89f7f0db"),
        const SizedBox(
          height: 15,
        ),
        const Heading("Your account has been successfully created!"),
        const SizedBox(
          height: 35,
        ),
        const GetStartedBtn(),
      ])),
    );
  }
}

class Heading extends StatelessWidget {
  final String text;
  const Heading(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 0.0),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}

class GetStartedBtn extends StatelessWidget {
  const GetStartedBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 54,
        width: double.infinity,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: const Color(0xff5ED5A8), boxShadow: [
          BoxShadow(
            color: const Color(0xff5ED5A8).withOpacity(.15),
            offset: const Offset(0, 10),
            blurRadius: 20,
            spreadRadius: 0,
          )
        ]),
        child: TextButton(
          child: const Text(
            "Get Started",
            style: TextStyle(color: Colors.black),
          ),
          onPressed: () {
            //Navigate Home Here
            Navigator.popAndPushNamed(context, '/home');
            //or move screens
          },
        ));
  }
}
