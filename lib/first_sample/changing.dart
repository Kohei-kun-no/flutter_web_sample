import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String githubUrl = 'https://github.com/Kohei-kun-no';
  String twitterUrl = 'https://twitter.com/home?lang=ja';
  String instagramUrl = 'https://www.instagram.com/koheiminoda/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('簑田康平 / minoda kohei'),
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: Column(
                    children: [
                      Container(
                        width: 250,
                        height: 300,
                        child: Image.asset('assets/images/profile_image.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "I am not good at it, but I like it.",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Text(''),
                    ],
                  )),
                  SizedBox(
                    width: 100,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Background',
                          style: TextStyle(fontSize: 40),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'December 5, 2000 : I was born.',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'April , 2019 : I enrolled in Kyushu University',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              'December , 2020 : I have started my working as software engineer'),
                        ),
                        Text(
                          'My Accounts',
                          style: TextStyle(fontSize: 40),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black,
                            ),
                            onPressed: launchGithub,
                            child: Text('GitHub'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: launchTwitter,
                            child: Text('Twitter'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.purple,
                            ),
                            onPressed: launchInstagram,
                            child: Text('Instagram'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Text(
                'My Skills',
                style: TextStyle(fontSize: 40),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'Flutter',
                            style: TextStyle(fontSize: 24),
                          ),
                          Text('I made iOS App, Android App, and Web App'),
                          Text('This web page is made by Flutter'),
                          Image.asset('assets/images/flutter_image.png'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              'Python',
                              style: TextStyle(fontSize: 24),
                            ),
                            Text('Mainly for data analytics'),
                            Text('I like to study statistics.'),
                            Image.asset('assets/images/python_image.png'),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              'Ruby on Rails',
                              style: TextStyle(fontSize: 24),
                            ),
                            Text('At First, I made web app by Rails'),
                            Text('I do not write recently...'),
                            Image.asset('assets/images/rails_image.png'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                child: Text('PRODUCED BY KOHEI MINODA'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void launchGithub() async {
    if (!await launch(githubUrl)) throw 'Could not launch $githubUrl';
  }

  void launchTwitter() async {
    if (!await launch(twitterUrl)) throw 'Could not launch $twitterUrl';
  }

  void launchInstagram() async {
    if (!await launch(instagramUrl)) throw 'Could not launch $instagramUrl';
  }
}
