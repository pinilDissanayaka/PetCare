import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/signup.dart';
import 'package:flutter_application_1/pages/userprofile.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 249, 246, 244),
        body: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                "assets/foot.png",
                alignment: AlignmentDirectional.centerStart,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding:
                    const EdgeInsets.all(70.0), // Add some padding if needed
                child: Opacity(
                  opacity:
                      0.3, // Adjust the opacity as needed for watermark effect
                  child: SizedBox(
                    height: 90,
                    width: 90,
                    child: Image.asset(
                      'assets/paw.png',
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding:
                    const EdgeInsets.all(190.0), // Add some padding if needed
                child: Opacity(
                  opacity:
                      0.4, // Adjust the opacity as needed for watermark effect
                  child: SizedBox(
                    height: 60,
                    width: 60,
                    child: Image.asset('assets/paw.png'),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding:
                    const EdgeInsets.all(60.0), // Add some padding if needed
                child: Opacity(
                  opacity:
                      0.4, // Adjust the opacity as needed for watermark effect
                  child: SizedBox(
                    height: 60,
                    width: 70,
                    child: Image.asset('assets/paw.png'),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:
                    const EdgeInsets.all(55.0), // Add some padding if needed
                child: Opacity(
                  opacity:
                      0.4, // Adjust the opacity as needed for watermark effect
                  child: SizedBox(
                    height: 60,
                    width: 60,
                    child: Image.asset('assets/paw.png'),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding:
                    const EdgeInsets.all(10.0), // Add some padding if needed
                child: Opacity(
                  opacity:
                      0.4, // Adjust the opacity as needed for watermark effect
                  child: SizedBox(
                    height: 45,
                    width: 45,
                    child: Image.asset('assets/paw.png'),
                  ),
                ),
              ),
            ), // Background Image (optional)

            SingleChildScrollView(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  _signInPic(context),
                  _header(context),
                  _inputFeild(context),
                  _forgotPassword(context),
                  _elevateButton(context),
                  _signUp(context),
                  _otherConnect(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _signInPic(context) {
    return Container(
      child: const Image(
        image: AssetImage("assets/loginAndSignin.jpg"),
        width: 250,
        height: 250,
      ),
    );
  }

  _header(context) {
    return Container(
      width: 600,
      padding: const EdgeInsets.all(10),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Login",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
              textAlign: TextAlign.left),
          Text("Please Sign Into Continue",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  _inputFeild(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        TextField(
          decoration: InputDecoration(
              hintText: "User Name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              fillColor: Colors.transparent,
              filled: true,
              prefixIcon: const Icon(Icons.person)),
        ),
        const SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
            fillColor: Colors.transparent,
            filled: true,
            prefixIcon: const Icon(Icons.lock_rounded),
            suffixIcon: const Icon(Icons.remove_red_eye_outlined),
          ),
          obscureText: true,
        ),
      ],
    );
  }

  _forgotPassword(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {},
          child: const Text("Forgot Password ?"),
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.black)),
        ),
      ],
    );
  }

  _elevateButton(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const userProfile();
            }));
          },
          child: const Text(
            "Sign In",
            style: TextStyle(fontSize: 20),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            shape: MaterialStateProperty.all(const StadiumBorder()),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(vertical: 10)),
          ),
        ),
      ],
    );
  }

  _signUp(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          "Don't have an account?",
          style: TextStyle(fontSize: 18),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const signUp();
            }));
          },
          child: const Text("Sign Up"),
        ),
      ],
    );
  }

  _otherConnect(context) {
    return Column(
      children: <Widget>[
        const Text("Or Connect With", style: TextStyle(fontSize: 18)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const SizedBox(
                height: 50,
                width: 50,
                child: Image(
                  image: AssetImage("assets/googlelogo.png"),
                ),
              ),
              padding: EdgeInsets.zero,
            ),
            IconButton(
              onPressed: () {},
              icon: const SizedBox(
                  height: 50,
                  width: 50,
                  child: Image(image: AssetImage("assets/Facebook_Logo.png"))),
            ),
          ],
        ),
      ],
    );
  }
}
