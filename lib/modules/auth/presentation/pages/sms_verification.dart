import 'package:flutter/material.dart';

class SMSVerificationPage extends StatefulWidget {
  const SMSVerificationPage({Key? key}) : super(key: key);

  @override
  _SMSVerificationPageState createState() => _SMSVerificationPageState();
}

class _SMSVerificationPageState extends State<SMSVerificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1b232A),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BackArrow(),
            const Heading("Enter your code"),
            const SubHeading("Please type the code we sent to +1 (504) 321 1234"),
            const SizedBox(
              height: 15,
            ),
            VerificationInputs(),
            const SizedBox(
              height: 25,
            ),
            const ContinueBtn(),
          ],
        ),
      ),
    );
  }
}

class VerificationInputs extends StatelessWidget {
  VerificationInputs({Key? key}) : super(key: key);
  TextEditingController m1 = TextEditingController();
  TextEditingController m2 = TextEditingController();
  TextEditingController m3 = TextEditingController();
  TextEditingController m4 = TextEditingController();

  FocusNode fn1 = FocusNode();
  FocusNode fn2 = FocusNode();
  FocusNode fn3 = FocusNode();
  FocusNode fn4 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MobileInput(m1, fn1, fn2),
        MobileInput(m2, fn2, fn3),
        MobileInput(m3, fn3, fn4),
        MobileInput(m4, fn4, fn4),
      ],
    );
  }
}

class BackArrow extends StatelessWidget {
  const BackArrow({Key? key}) : super(key: key);

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

class Heading extends StatelessWidget {
  final String text;
  const Heading(this.text);

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

class MobileInput extends StatefulWidget {
  TextEditingController textEditingController;
  FocusNode fcNode;
  FocusNode fcNode2;

  MobileInput(this.textEditingController, this.fcNode, this.fcNode2);

  @override
  State<MobileInput> createState() => _MobileInputState();
}

class _MobileInputState extends State<MobileInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(offset: const Offset(12, 26), blurRadius: 50, spreadRadius: 0, color: Colors.grey.withOpacity(.1)),
        ]),
        child: TextField(
          focusNode: widget.fcNode,
          onChanged: (value) {
            if (value.isNotEmpty) {
              FocusScope.of(context).requestFocus(widget.fcNode2);
            }
            //Do something wi
          },
          style: const TextStyle(fontSize: 14, color: Colors.white),
          decoration: InputDecoration(
            // prefixIcon: Icon(Icons.email),
            filled: true,
            fillColor: const Color(0xff161C22),
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
    );
  }
}

class ContinueBtn extends StatelessWidget {
  const ContinueBtn({
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
          child: const Text("Continue", style: TextStyle(color: Colors.black)),
          onPressed: () {
            //Navigate Home Here
            Navigator.pushReplacementNamed(context, '/sign_up_sucess');
            //or move screens
          },
        ));
  }
}
