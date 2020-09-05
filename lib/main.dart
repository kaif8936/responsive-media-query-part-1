



import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final appBar = AppBar();

    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Widget logo() {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Text(
            'Get Social',
            style: GoogleFonts.sourceSansPro(
              textStyle: TextStyle(
                color: Colors.grey[600],
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget signUp() {
    return Container(
      width: 280,
      child: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 0,
                offset: Offset(
                  10,
                  10,
                ),
              )
            ],
          ),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Login',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'id',
                ),
              ),
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(hintText: 'password'),
              ),
              Text('Forgot Username or Password?'),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text('Login'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget social() {
    return Column(
      children: [
        SizedBox(
          height: 29,
        ),
        Text('Or'),
        SizedBox(
          height: 10,
        ),
        Text('Login With Your Social Newtwork'),
        SizedBox(
          height: 5,
        ),
        Container(
          width: 250,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundColor: Colors.red[100],
                child: Icon(Icons.account_circle),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Dont have an account? Sign up now',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.red,
    );
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: (MediaQuery.of(context).size.height -
                      appBar.preferredSize.height -
                      MediaQuery.of(context).padding.top) *
                  0.28,
              child: logo(),
            ),
            Container(
              height: (MediaQuery.of(context).size.height -
                      appBar.preferredSize.height -
                      MediaQuery.of(context).padding.top) *
                  0.42,
              child: signUp(),
            ),
            Container(
              height: (MediaQuery.of(context).size.height -
                      appBar.preferredSize.height -
                      MediaQuery.of(context).padding.top) *
                  0.30,
              child: social(),
            ),
          ],
        ),
      ),
    );
  }
}

// - appBar.preferredSize.height  -
// MediaQuery.of(context).padding.top)

// -
// MediaQuery.of(context).padding.top)
