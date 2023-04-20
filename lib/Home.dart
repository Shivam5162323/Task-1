import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;
  int _index2 = 0;
  int _index3 = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child:
         Container(

           child: Column(
             children: [
               Container(
                 color: Color(0xFFFf2f9fb),

                 // margin: EdgeInsets.only(top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                  //
                  //
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //   IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bars)),
                  //
                  //   Row(children: [
                  //     IconButton(onPressed: (){}, icon: Icon(Icons.chat_bubble_outline)),
                  //     IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bell)),
                  //
                  //   ],)
                  // ],),







                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(margin: EdgeInsets.only(top: 30),),
                    Text('Hello, Shivam!',style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold,fontFamily: 'Darker'),),
                    Text('What do you wanna learn today?',style: TextStyle(fontSize: 17 ,color: Colors.blueGrey,fontFamily: 'Zen',fontWeight: FontWeight.w500),),

                    Container(
                      margin: EdgeInsets.only(top: 40,bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [

                        Expanded(child: ElevatedButton(onPressed: (){}, child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              Icon(Icons.book,color: Colors.blue,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text('Programs',style: TextStyle(color: Colors.blue),),
                              ),
                            ],
                          ),
                        ),style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(side: BorderSide(color: Colors.blue),borderRadius: BorderRadius.all(Radius.circular(7))),

                            backgroundColor:     Color(0xFFFf2f9fb),
                    )

                        )),



                        Container(padding: EdgeInsets.symmetric(horizontal: 7.5),),




                          Expanded(child: ElevatedButton(onPressed: (){}, child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Icon(Icons.help,color: Colors.blue,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text('Get help',style: TextStyle(color: Colors.blue),),
                                ),
                              ],
                            ),
                          ),style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(side: BorderSide(color: Colors.blue),borderRadius: BorderRadius.all(Radius.circular(7))),

                            backgroundColor:     Color(0xFFFf2f9fb),

                          )

                          )),


                        ],),
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Expanded(child: ElevatedButton(onPressed: (){}, child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              Icon(CupertinoIcons.book_fill,color: Colors.blue,),
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text('Learn',style: TextStyle(color: Colors.blue),),
                              ),
                            ],
                          ),
                        ),style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(side: BorderSide(color: Colors.blue),borderRadius: BorderRadius.all(Radius.circular(7))),

                          backgroundColor:     Color(0xFFFf2f9fb),
                        )

                        )),


                        Container(padding: EdgeInsets.symmetric(horizontal: 7.5),),


                        Expanded(child: ElevatedButton(onPressed: (){}, child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              Icon(CupertinoIcons.chart_bar_square_fill,color: Colors.blue,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text('DD Tracker',style: TextStyle(color: Colors.blue),),
                              ),
                            ],
                          ),
                        ),style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(side: BorderSide(color: Colors.blue),borderRadius: BorderRadius.all(Radius.circular(7))),
                          backgroundColor:     Color(0xFFFf2f9fb),
                        )

                        )),



                      ],),

                        Container(padding: EdgeInsets.symmetric(vertical: 17.5),),



                      ],),



                  ),













                  ],),
        ),



               Container(
                 margin: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                 child: Column(children: [


                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                     Text('Programs for you',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'Zen'),),
                      TextButton(onPressed: (){}, child: Row(children: [
                        Text('View all',style: TextStyle(color: Colors.blueGrey,fontSize: 12),),
                        Icon(Icons.arrow_forward,color: Colors.blueGrey,size: 14,)
                      ],))
                   ],),









                 ],),
               ),

               Container(
                 child: SizedBox(
                 height: 410, // card height
                 child: PageView.builder(
                   itemCount: 5,
                   controller: PageController(viewportFraction: 0.7,),

                   onPageChanged: (int index) => setState(() => _index = index),
                   itemBuilder: (_, i) {
                     return Transform.scale(
                       scale: i == _index ? 1 : 0.9,
                       child: Card(
                         elevation: 2,
                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             ClipRRect(
                                 borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                                 child: Image.asset('assets/c1.jpeg',)),
                             Container(
                               padding: const EdgeInsets.all(12.0),

                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,

                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(bottom: 10),
                                     child: Text('LIFESTYLE',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(bottom: 20),
                                     child: Text('A complete guide for your new born baby',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: 'Zen')),
                                   ),
                                   Text('16 lessons',style: TextStyle(color: Colors.blueGrey),),
                                 ],
                               ),
                             )
                           ],
                         ),
                       ),
                     );
                   },
                 ),
               ),),





























               Container(
                 margin: EdgeInsets.symmetric(vertical: 25,horizontal: 15),
                 child: Column(children: [


                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text('Events and experiences',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'Zen'),),
                       TextButton(onPressed: (){}, child: Row(children: [
                         Text('View all',style: TextStyle(color: Colors.blueGrey,fontSize: 12),),
                         Icon(Icons.arrow_forward,color: Colors.blueGrey,size: 14,)
                       ],))
                     ],),









                 ],),
               ),

               Container(
                 child: SizedBox(
                   height: 330, // card height
                   child: PageView.builder(
                     itemCount: 5,
                     controller: PageController(viewportFraction: 0.7,),

                     onPageChanged: (int index) => setState(() => _index2 = index),
                     itemBuilder: (_, i) {
                       return Transform.scale(
                         scale: i == _index2 ? 1 : 0.9,
                         child: Card(
                           elevation: 2,
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               ClipRRect(
                                   borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                                   child: Image.asset('assets/c2.jpeg',)),
                               Container(
                                 padding: const EdgeInsets.all(12.0),

                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,

                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.only(bottom: 10),
                                       child: Text('BABYCARE',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.only(bottom: 20),
                                       child: Text('Understanding of human behaviour',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: 'Zen')),
                                     ),
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,


                                       children: [
                                         Text('22 April',style: TextStyle(color: Colors.blueGrey),),
                                         ElevatedButton(onPressed: (){}, child: Text('Back',style: TextStyle(color: Colors.blue),),style: ElevatedButton.styleFrom(
                                           shape: StadiumBorder(side: BorderSide(color: Colors.blue,style: BorderStyle.solid)),

                                           backgroundColor:     Colors.white,

                                         ))
                                       ],
                                     ),
                                   ],
                                 ),
                               )
                             ],
                           ),
                         ),
                       );
                     },
                   ),
                 ),),




















               Container(
                 margin: EdgeInsets.symmetric(vertical: 25,horizontal: 15),
                 child: Column(children: [


                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text('Lessons for you',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'Zen'),),
                       TextButton(onPressed: (){}, child: Row(children: [
                         Text('View all',style: TextStyle(color: Colors.blueGrey,fontSize: 12),),
                         Icon(Icons.arrow_forward,color: Colors.blueGrey,size: 14,)
                       ],))
                     ],),









                 ],),
               ),



               Container(
                 child: SizedBox(
                   height: 330, // card height
                   child: PageView.builder(
                     itemCount: 5,
                     controller: PageController(viewportFraction: 0.7,),

                     onPageChanged: (int index) => setState(() => _index3 = index),
                     itemBuilder: (_, i) {
                       return Transform.scale(
                         scale: i == _index3 ? 1 : 0.9,
                         child: Card(
                           elevation: 2,
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               ClipRRect(
                                   borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                                   child: Image.asset('assets/c2.jpeg',)),
                               Container(
                                 padding: const EdgeInsets.all(12.0),

                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,

                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.only(bottom: 10),
                                       child: Text('BABYCARE',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.only(bottom: 20),
                                       child: Text('Understanding of human behaviour',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: 'Zen')),
                                     ),
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,


                                       children: [
                                         Text('3 min',style: TextStyle(color: Colors.blueGrey),),
                                         IconButton(onPressed: (){}, icon: Icon(Icons.lock_open_outlined,color: Colors.blueGrey,))
                                       ],
                                     ),
                                   ],
                                 ),
                               )
                             ],
                           ),
                         ),
                       );
                     },
                   ),
                 ),),






             ],
           ),
         ),
      )
    ;
  }
}
