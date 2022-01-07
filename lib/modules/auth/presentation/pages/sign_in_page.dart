import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1b232A),
      body: SafeArea(
          bottom: false,
          child: ListView(
            children: const [
              Spacer(),
              HeadingSignIn("Sign In"),
              SizedBox(
                height: 25,
              ),
              EmailInputSignIn(),
              PasswordInputSignIn(),
              Padding(
                  padding: EdgeInsets.only(top: 0.0, left: 15.0),
                  child: TextButton(
                    child: Text(
                      "Forgot your password?",
                      style: TextStyle(fontWeight: FontWeight.normal, color: Color(0xff5ED5A8)),
                    ),
                    onPressed: null,
                  )),
              SignInButton(),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Text(
                    "Or login with?",
                    style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey),
                  ),
                ),
              ),
              SocialButtonsSignIn(),
            ],
          )),
    );
  }
}

class HeadingSignIn extends StatelessWidget {
  final String text;
  // ignore: use_key_in_widget_constructors
  const HeadingSignIn(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 15.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}

class EmailInputSignIn extends StatelessWidget {
  const EmailInputSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white.withOpacity(.9)),
          ),
          const SizedBox(
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
                hintText: 'Enter your email',
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

class PasswordInputSignIn extends StatelessWidget {
  const PasswordInputSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Password",
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
              obscureText: true,
              onChanged: (value) {
                //Do something wi
              },
              style: const TextStyle(fontSize: 14, color: Colors.white),
              decoration: InputDecoration(
                // prefixIcon: Icon(Icons.email),
                filled: true,
                fillColor: const Color(0xff161C22),
                hintText: 'Enter your password',
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

class SignInButton extends StatelessWidget {
  const SignInButton({
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
          child: const Text("Sign In", style: TextStyle(color: Colors.black)),
          onPressed: () {
            //Navigate Home Here
            Navigator.pushNamed(context, '/home');
            //or move screens
          },
        ));
  }
}

class SocialButtonsSignIn extends StatelessWidget {
  const SocialButtonsSignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [FacebookBtnSignIn(), GoogleBtnSignIn()],
      ),
    );
  }
}

class GoogleBtnSignIn extends StatelessWidget {
  const GoogleBtnSignIn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 54,
        width: MediaQuery.of(context).size.width / 2.5,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: TextButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/crypto%2Fsearch%20(2).png?alt=media&token=24a918f7-3564-4290-b7e4-08ff54b3c94c",
                width: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text("Google", style: TextStyle(color: Colors.black, fontSize: 16)),
            ],
          ),
          onPressed: () {
            //Navigate Home Here

            //or move screens
          },
        ));
  }
}

class FacebookBtnSignIn extends StatelessWidget {
  const FacebookBtnSignIn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 54,
        width: MediaQuery.of(context).size.width / 2.5,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: TextButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://firebasestorage.googleapis.com/v0/b/crypto-64d0f.appspot.com/o/facebook.png?alt=media&token=0a74d69c-4edf-4d48-a181-1ce794255e5a",
                width: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text("Facebook", style: TextStyle(color: Colors.black, fontSize: 16)),
            ],
          ),
          onPressed: () {
            //Navigate Home Here
            //or move screens
          },
        ));
  }
}
