import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

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
                SizedBox(width: 40,),
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
                        child: Text('December , 2020 : I have started my working as software engineer'),
                      ),
                      Text('My Accounts', style: TextStyle(fontSize: 40),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('GitHub: @Kohei-kun-no',),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Twitter: @6G2QVnYlSHxIj5m',),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Instagram: @koheiminoda',),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}