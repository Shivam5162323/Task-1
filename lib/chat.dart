import 'package:flutter/material.dart';

class Chat extends StatelessWidget {

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
                child: Image.network('https://cdn-icons-png.flaticon.com/512/2518/2518227.png')),
            Text(
              'Chat',
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
