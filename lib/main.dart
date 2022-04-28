import 'package:cupertino_page_transition_ex/splash_screen.dart';
import 'package:flutter/cupertino.dart' show CupertinoPageRoute;
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Flutter CupertinoPageTransition Demo'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: InkWell(
          onTap: () => Navigator.of(context).push(PageTwo.route()),
          child: Image.asset('assets/pencil.png'),
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  static Route<dynamic> route() {
    return CupertinoPageRoute(
      builder: (BuildContext context) {
        return const PageTwo();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/logo.png'),
      ),
    );
  }
}