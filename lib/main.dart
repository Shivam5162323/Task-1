import 'package:b/Learn.dart';
import 'package:b/hub.dart';
import 'package:b/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

import 'Home.dart';
import 'chat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex=0;
  // int _selectedIndec=0;


  final List<Widget> _screens = [
     Home(),
    Learn(),
    Hub(),
    Chat(),
    Profile()
  ];


  @override
  Widget build(BuildContext context) {




    // Row(
    //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                     children: [
    //                     IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bars)),
    //
    //                     Row(children: [
    //                       IconButton(onPressed: (){}, icon: Icon(Icons.chat_bubble_outline)),
    //                       IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bell)),
    //
    //                     ],)
    //                   ],),


    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bars,color: Colors.black,)),
        backgroundColor:     Color(0xFFFEEF3FD),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.chat_bubble_outline,color: Colors.black,)),
          IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bell,color: Colors.black,)),

        ],),





      ),

      body: _screens[_currentIndex],
      bottomNavigationBar: SnakeNavigationBar.color(
        backgroundColor: Colors.white,
        behaviour: SnakeBarBehaviour.floating,
        snakeShape: SnakeShape.indicator,
        shape: Border(top: BorderSide(width: 2,color: Colors.white)),
        // shape: StadiumBorder(side: BorderSide(color: Colors.white54)),
        // padding: EdgeInsets.all(8),

        ///configuration for SnakeNavigationBar.color
        snakeViewColor: Colors.blue,
        selectedItemColor: SnakeShape.circle == SnakeShape.indicator ? Colors.blue : Colors.blue,
        unselectedItemColor: Colors.blueGrey,

        ///configuration for SnakeNavigationBar.gradient
        //snakeViewGradient: selectedGradient,
        //selectedItemGradient: snakeShape == SnakeShape.indicator ? selectedGradient : null,
        //unselectedItemGradient: unselectedGradient,

        showUnselectedLabels: true,
        showSelectedLabels: true,


        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items:

        [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.book), label: 'Learn'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.rectangle_grid_2x2), label: 'Hub'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled), label: 'Profile',),

          // BottomNavigationBarItem(icon: Icon(CustomIcons.home), label: 'home'),
          // BottomNavigationBarItem(icon: Icon(CustomIcons.podcasts), label: 'microphone'),
          // BottomNavigationBarItem(icon: Icon(CustomIcons.search), label: 'search')
        ],
      ),

    );
  }
}
