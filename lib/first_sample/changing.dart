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
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(child: Column(
                  children: [
                    Text('photo'),
                    SizedBox(height: 40,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('I like to watch Football games',),
                    ),
                  ],
                )),
                SizedBox(width: 200,),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Background', style: TextStyle(fontSize: 40),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('December 5, 2000 : I was born.',),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('April , 2019 : I enrolled in Kyushu University',),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('December , 2021 : I have started my working as software engineer'),
                      ),
                      Text('My Accounts', style: TextStyle(fontSize: 40),),
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
          SizedBox(height: 100,),
          Container(
            child: Text('My Skills', style: TextStyle(fontSize: 40),),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Container(
                    child: Column(
                      children: [
                        Text('Flutter'),
                        Text('I made iOS App, Android App, and Web App'),
                        Text('This web page is made by Flutter'),
                        Text('Flutter image url'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Container(
                    child: Column(
                      children: [
                        Text('Python'),
                        Text('Recently I started to write python.'),
                        Text('Mainly for data analytics'),
                        Text('Python image url'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Container(
                    child: Column(
                      children: [
                        Text('Ruby on Rails'),
                        Text('At First, I made web app by Rails'),
                        Text('I do not write recently...'),
                        Text('Ruby on Rails image url'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void launchGithub () async {
    if (!await launch(githubUrl)) throw 'Could not launch $githubUrl';
  }

  void launchTwitter () async {
    if (!await launch(twitterUrl)) throw 'Could not launch $twitterUrl';
  }

  void launchInstagram () async {
    if (!await launch(instagramUrl)) throw 'Could not launch $instagramUrl';
  }

}