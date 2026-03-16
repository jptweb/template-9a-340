/*
STARTER CODE FOR WEEK 9A - Copy this entire file into your main.dart

WHAT WE'LL BUILD TODAY:
1. CachedNetworkImage - Cache images locally instead of re-downloading
2. SharedPreferences - Save and load data that persists between app sessions
3. URL Launcher - Open web pages, email, phone from your app

PACKAGES TO INSTALL (we'll do these one at a time in class):
- flutter pub add cached_network_image
- flutter pub add shared_preferences
- flutter pub add url_launcher

YOUR SOLUTION:
- Doesn't need to match mine exactly
- Should demonstrate the topics above
- Shows good effort and understanding

FELL BEHIND IN CLASS?
- Review the full 9A notes on GitHub or MyCourses
- Attempt to complete the topics on your own
- Come see me if you need help

DUE: Before next class starts

HOW TO USE THIS STARTER CODE:
1. Create a new "Empty Application" in Flutter
2. Replace the entire main.dart with this code
3. Install packages as we go (see comments for when)
4. Follow along in class or use the notes to build the features
5. Submit your completed main.dart to GitHub (see repo README for instructions)
*/

import 'package:flutter/material.dart';

// 1.1) Run "flutter pub add cached_network_image" in terminal
// 1.2) Uncomment the following:
//import 'package:cached_network_image/cached_network_image.dart';

// 2.1) Run "flutter pub add shared_preferences"
// 2.2) Uncomment the following:
//import 'package:shared_preferences/shared_preferences.dart';

// 3.1) Run "flutter pub add url_launcher"
// 3.2) Uncomment the following:
//import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Week9aDemo(),
    );
  }
}

class Week9aDemo extends StatefulWidget {
  const Week9aDemo({super.key});

  @override
  State<Week9aDemo> createState() => _Week9aDemoState();
}

class _Week9aDemoState extends State<Week9aDemo> {

  // This points to a very large image (2MB) - intentionally big to show caching benefit
  String myImage = "https://people.rit.edu/~dxcigm/340/assets/images/nms_big.jpg";

  final txtController01 = TextEditingController();
  final txtController02 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Week 9A App"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              // ===== PART 1: CachedNetworkImage =====

              // Regular plain ol image - reloads every time (NOT cached)
              Image.network(
                myImage,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),

              SizedBox(height: 20),

              // Container version with BoxDecoration (also NOT cached)
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(myImage),
                    fit: BoxFit.fill,
                  ),
                  border: Border.all(
                    color: Colors.black,
                    width: 4,
                  ),
                ),
                child: Text("Hello World"),
              ),

              SizedBox(height: 20),

              // 1.3) Add a CachedNetworkImage version below (downloads once, then uses cache)
              //       Hint: CachedNetworkImage(imageUrl: ..., placeholder: ..., errorWidget: ...)

              // 1.4) Copy the Container above and swap NetworkImage for CachedNetworkImageProvider


              // ===== PART 2: SharedPreferences =====

              // 2.3) Create a late SharedPreferences myPrefs; up with the other variables

              // 2.4) Create an async init() function that gets SharedPreferences.getInstance()
              //       and call it from initState()

              // 2.5) Add two TextFields below here (one for name, one for email)
              //       Use txtController01 and txtController02

              // 2.6) Add an ElevatedButton for "Save"

              // 2.7) Create a saveText() function that saves both controller values

              // 2.8) Call saveText() from the Save button's onPressed

              // 2.9) Add an ElevatedButton for "Load"

              // 2.10) Create a loadText() function that reads saved values and updates controllers with setState

              // 2.11) Call loadText() from the Load button's onPressed

              // BONUS: Add await loadText() to your init() function so data loads on app startup!


              // ===== PART 3: URL Launcher =====
              // IMPORTANT: Before this works on Android you need to edit
              // android/app/src/main/AndroidManifest.xml (see class notes for details)

              // 3.3) Add a String myURL = "https://www.google.com"; up with the other variables

              // 3.4) Create an openURL() function:
              //       - Convert string to URI with Uri.parse()
              //       - Call launchUrl() with LaunchMode.inAppWebView

              // 3.5) Add an ElevatedButton that calls openURL()

              // 3.6) Try different LaunchMode options (inAppWebView, inAppBrowserView, externalApplication)

            ],
          ),
        )
      );
  }
}
