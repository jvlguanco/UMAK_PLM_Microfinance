import 'package:flutter/material.dart';
import '../register/register.dart';

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcome(),
    );
  }
}

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[600],
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 275.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Text(
                'E-Pon',
                style: TextStyle(
                  fontSize: 48.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Center(
              child: Text(
                'motto here',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(height: 50.0),
            Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterScreen()
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.teal[900],
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(40.0, 5.0, 40.0, 5.0),
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                    ),
                  )
              ),
            ),
            SizedBox(height: 5.0),
            Center(
              child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.teal[900],
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(50.0, 5.0, 50.0, 5.0),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}

