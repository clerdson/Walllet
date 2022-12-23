import 'package:flutter/material.dart';
import 'package:wallet/features/graph/presentation/Pages/home_page.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xff611F83),
                    Color(0xffB866E1),
                  ],
                ),
              ),
              width: MediaQuery.of(context).size.height,
              height: 400,
              child: Center(
                child: Container(
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
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                              Text(
                                '475,000.00',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50),
                  Text(
                    'Bem vindo ao Wallet',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
                  ),
                  Text(
                    'Entre com seu CPF e senha',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 340,
                    height: 60,
                    color: Colors.grey[200],
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                            hintText: 'CPF'),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 340,
                    height: 60,
                    color: Colors.grey[200],
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                            hintText: 'Senha'),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff611F83),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10)),
                      ),
                      width: 340,
                      height: 70,
                      child: Center(
                        child: Text(
                          'Entra',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Novo usuario?',
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              'Cadastre-se',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xff611F83),
                              ),
                            )
                          ]),
                      Text(
                        'Esqueceu sua senha',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff611F83),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
