import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        ),
    body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 40),
            Image.asset(
              'assets/images/img.png', // Ganti dengan path gambar yang sesuai
              width: 200,
              height: 200,
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.1),
            Text('Hello, Please Login!',
              style: TextStyle(
                  color: Colors.amberAccent[900],
                  fontSize: 32,
                  letterSpacing: 4.0,
                  fontWeight: FontWeight.bold),),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.amberAccent, width: 2.0),
                    borderRadius: BorderRadius.zero,
                  ),
                  contentPadding:
                  EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.amberAccent, width: 2.0),
                    borderRadius: BorderRadius.zero,
                  ),
                  prefixIcon: Icon(
                    Icons.person, color: Colors.amberAccent,
                  ),
                  labelText: 'Username',
                  hintText: 'Masukkan username',
                  labelStyle:TextStyle(
                      color: Colors.amberAccent
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.amberAccent, width: 2.0),
                    borderRadius: BorderRadius.zero,
                  ),
                  contentPadding:
                  EdgeInsets.only(left: 30.0, top: 20.0, bottom: 20.0),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Colors.amberAccent, width: 2.0),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  prefixIcon: Icon(
                    Icons.lock, color: Colors.amberAccent,
                  ),
                  labelText: 'Password',
                  hintText: 'Masukkan password',
                  labelStyle:TextStyle(
                      color: Colors.amberAccent
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implementasi aksi ketika tombol ditekan
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.amberAccent, // Warna latar button hijau
                maximumSize: Size(200,200), // Ukuran button
              ),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
