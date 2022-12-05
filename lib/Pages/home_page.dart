import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _expandedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: EdgeInsets.all(29),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.menu_book)),
              Text(
                'Hello Clerdson',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                'Welcome Back',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Container(
                width: 30,
                height: 30,
                color: Colors.amber,
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
              Container(
                width: 400,
                height: 200,
                child: RotationTransition(
                  turns: new AlwaysStoppedAnimation(8 / 360),
                  child: Card(
                    color: Colors.transparent,
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            Colors.purple,
                            Colors.black,
                            Colors.purpleAccent,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            Text(
                              'CLERDSON JUCA DOS S. ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            Text(
                              '475,000.00',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                'Total Spent',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                '475,000.00',
                style: TextStyle(color: Colors.amber, fontSize: 20),
              ),
              Container(
                width: 400,
                height: 370,
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) =>Container(
                    width: 400,
                    height: 100,
                    child: GestureDetector(
                      onTap: (){
                        setState((){
                          _expandedIndex = index;

                        });

                      },
                      child: Card(
                        color:_expandedIndex == index? Colors.grey[900]:Colors.black,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.shopping_cart, color: Colors.amber),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Total Spent',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                Text(
                                  '475,000.00',
                                  style: TextStyle(
                                      color: Colors.amber, fontSize: 20),
                                )
                              ],
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              color: Colors.amber,
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
