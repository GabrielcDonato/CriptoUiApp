import 'package:flutter/material.dart';

class RegisterPhonePage extends StatelessWidget {
  const RegisterPhonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1b232A),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            BackArrowPhone(),
            HeadingPhone("Register with mobile"),
            SubHeading("Please type your number, then we’ll send a verification code for authentication."),
            SizedBox(
              height: 15,
            ),
            MobileInputRegister(),
            SizedBox(
              height: 25,
            ),
            SendSMSBtn(),
          ],
        ),
      ),
    );
  }
}

class BackArrowPhone extends StatelessWidget {
  const BackArrowPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            icon: const Icon(
              Icons.arrow_left,
              color: Colors.grey,
            ),
            onPressed: () {}),
        const Text(
          "Sign Up",
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}

class HeadingPhone extends StatelessWidget {
  final String text;
  const HeadingPhone(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 15.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}

class SubHeading extends StatelessWidget {
  final String text;
  const SubHeading(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white.withOpacity(.9)),
      ),
    );
  }
}

class MobileInputRegister extends StatelessWidget {
  const MobileInputRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Phone number",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white.withOpacity(.9)),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(offset: const Offset(12, 26), blurRadius: 50, spreadRadius: 0, color: Colors.grey.withOpacity(.1)),
            ]),
            child: TextField(
              onChanged: (value) {
                //Do something wi
              },
              style: const TextStyle(fontSize: 14, color: Colors.white),
              decoration: InputDecoration(
                // prefixIcon: Icon(Icons.email),
                filled: true,
                fillColor: const Color(0xff161C22),
                hintText: 'Enter your phone',
                hintStyle: TextStyle(color: Colors.grey.withOpacity(.75)),
                contentPadding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 0.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 0.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SendSMSBtn extends StatelessWidget {
  const SendSMSBtn({
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
          child: const Text("Send SMS", style: TextStyle(color: Colors.black)),
          onPressed: () {
            //Navigate Home Here
            Navigator.popAndPushNamed(context, '/sms_verification');
            //or move screens
          },
        ));
  }
}
