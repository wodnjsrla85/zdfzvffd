import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Buttons',
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/apple.jpeg',
                      width: 150,
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Image.asset(
                        'images/banana1.jpeg',
                        width: 150,
                        fit: BoxFit.fill,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/peach.jpeg',
                      width: 150,
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Image.asset(
                        'images/greenpineapple.jpeg',
                        width: 150,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right:10),
                      child: OutlinedButton(
                        onPressed: () => print("애뽈~"),
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(150, 50),
                          foregroundColor: Colors.red,
                          side: BorderSide(
                            color: Colors.red,
                            width: 2,
                          ),
                        ),
                        child: Text(
                          'apple'
                        ),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () => print("버네나~"),
                      style: OutlinedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        foregroundColor: Colors.amberAccent,
                        side: BorderSide(
                          color: Colors.amberAccent,
                          width: 2,
                        ),
                      ),
                      child: Text(
                        'banana'
                      )
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: OutlinedButton(
                      onPressed: () => print("퓌취~"),
                      style: OutlinedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        foregroundColor: Colors.pinkAccent,
                        side: BorderSide(
                          color: Colors.pinkAccent,
                          width: 2,
                        ),
                      ),
                      child: Text(
                        'peach'
                      )
                    ),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(150, 50),
                      foregroundColor: Colors.green,
                        side: BorderSide(
                          color: Colors.green,
                          width: 2,
                        ),
                    ),
                    onPressed: () => print("뽜인애뽈~"),
                    child: Text(
                      'pineapple'
                    )
                  ),
                  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}