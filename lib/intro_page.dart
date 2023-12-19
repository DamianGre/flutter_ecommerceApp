import 'package:flutter/material.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                    'lib/images/logo.png',
                    height: 240,
                ),
              ),
              const SizedBox(height: 48),

              //title
              Text(
                'Just Fake it!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                ),
              ),

              const SizedBox(height: 24),
              //subtitle
              Text(
                'Brand new fakers and custom kicks made with premium quality!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.grey
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 24),
              //start now button
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage(),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                    child: Text(
                          'Shop now',
                          style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                            fontSize: 16,
                        ),
                
                    ),
                  )
                ,),
              )
            ],
          ),
        ),
      )
    );
  }
}
