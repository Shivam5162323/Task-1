import 'package:flutter/material.dart';

class Hub extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(
                width: 200,
                height: 200,
                child: Image.network('https://cdn-icons-png.flaticon.com/512/957/957642.png')),
            Text(
              'Hub',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
