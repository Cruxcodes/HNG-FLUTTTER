import 'package:flutter/material.dart';
import 'package:hng/Webview.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfileCard(),
    );
  }
}

class ProfileCard extends StatefulWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    dynamic screenWidth = MediaQuery.of(context).size.width;

    return Container(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/headshot.jpg'),
              radius: 140,
            ),
            SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: screenWidth * 0.04,
                ),
                text: "I am ",
                children: [
                  TextSpan(
                    text: "Abdullah Ola Mudathir",
                    style: TextStyle(
                      fontSize: screenWidth * 0.06,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: screenWidth * 0.04,
                ),
                text: "Slack Username: ",
                children: [
                  TextSpan(
                    text: "Crusader",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: screenWidth * 0.06,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WebView(
                      urlPath: "https://github.com/Cruxcodes",
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  elevation: 10,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
              child: Text(
                "Go to Github",
                style: TextStyle(
                  color: Colors.yellow,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
