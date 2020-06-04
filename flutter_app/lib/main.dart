import 'package:flutter/material.dart';



void main() {
  runApp(MaterialApp(
    theme: ThemeData(
     // primarySwatch: Colors.green,
      //primaryColor: Colors.red,
    ),
    routes: {
      '/': (context) => Home(),
      '/dashboard': (context) => Dashboard(),
      '/signup': (context) => Signup()

    },
  ));
}

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('L O G I N',
          style: TextStyle(
          fontSize: 30.0,
          color: Colors.white,

        ),),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent[700],
      ),
      body:
      Form(
      key: _formKey,
        child:Column(
          children: <Widget>[
            SizedBox(height: 20),
            CircleAvatar(
              backgroundImage: AssetImage('assets/login.jpeg'),
              radius: 60.0,
            ),
            SizedBox(height: 20),
        Padding(
        padding: EdgeInsets.all(10),
          child: Container(
            width:300,
              decoration: BoxDecoration(
                color: Colors.orangeAccent[400],
                borderRadius: new BorderRadius.circular(80.0),
              ),
              child: Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 5),
                  child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Username',
                      ),
                  ),
              ),
          ),
        ),




        SizedBox(height: 20),

        Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          width: 300,
          decoration: BoxDecoration(
          color: Colors.orangeAccent[400],
          borderRadius: new BorderRadius.circular(80.0),
          ),
        child: Padding(
        padding: EdgeInsets.only(left: 30, right: 30, top: 5),
        child: TextFormField(
        decoration: InputDecoration(
        border: InputBorder.none,
        labelText: 'Password',
        ),
        ),
        ),
        ),
        ),
                SizedBox(height: 20),
        Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
        height: 70,
        width: 150,
        child:
            RaisedButton(
              color: Colors.orangeAccent,
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/dashboard');
              },
              child: Text('LOGIN',
                style: TextStyle(color: Colors.white,letterSpacing: 2.0,),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(80.0),
                  side: BorderSide(color: Colors.amber)),
            ),
        ),),
            SizedBox(height: 20),
            Text('Have not account yet?',
            style: TextStyle(letterSpacing: 2.0,
            fontSize: 15.0,fontWeight: FontWeight.w500),
            ),

            Divider(height: 10.0 , color: Colors.grey[300], thickness: 3,
              indent: 20),
            SizedBox(height: 20),
            RaisedButton(
                color: Colors.orangeAccent,
                onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: Text('SIGN UP',
              style: TextStyle(color: Colors.white),
            ),
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.amber,)),
            ),
          ],
        ),

        ),
      );

  }

}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Dashboard",
            style: TextStyle(
              fontSize: 18.0,
              letterSpacing: 2.0,
            ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,

      ),

    );
  }
}

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Signup - Tiakela',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
            letterSpacing: 4.0,
            fontFamily: 'Roboto',

          ),),
        centerTitle: true,

        backgroundColor: Colors.orange[800],
      ),
      body: Form(
        child: Column(
          children: <Widget>[

            SizedBox(height: 2),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width:500,
                decoration: BoxDecoration(
                  color: Colors.amber[600],
                  borderRadius: new BorderRadius.circular(80.0),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 5),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'First Name',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width:500,
                decoration: BoxDecoration(
                  color: Colors.amber[600],
                  borderRadius: new BorderRadius.circular(80.0),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 5),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Last Name',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width:500,
                decoration: BoxDecoration(
                  color: Colors.amber[600],
                  borderRadius: new BorderRadius.circular(80.0),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 5),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Email',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width:500,
                decoration: BoxDecoration(
                  color: Colors.amber[600],
                  borderRadius: new BorderRadius.circular(80.0),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 5),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Address',
                    ),
                  ),
                ),
              ),
            ),


            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width:500,
                decoration: BoxDecoration(
                  color: Colors.amber[600],
                  borderRadius: new BorderRadius.circular(80.0),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 5),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Postal Code',
                    ),
                  ),
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/dashboard');
              },
              textColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFFF57C00),
                      Color(0xFFEF6C00),
                      Color(0xFFE65100),
                    ],
                  ),
                ),

                padding: const EdgeInsets.all(5.0),
                child:
                const Text('Register', style: TextStyle(fontSize: 20, letterSpacing: 3.0)),

              ),
            ),

          ],

        ),

      ),
    );
  }
}


