import 'package:flutter/material.dart';
import 'package:movienet/screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home:  HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body:  Home(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey.shade600,
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          title: Text('Home')
          ),

          BottomNavigationBarItem(icon: Icon(Icons.search),
              title: Text('Search'),
          ),

          BottomNavigationBarItem(icon: Icon(Icons.favorite),
              title: Text('Favorite'),
          ),

          BottomNavigationBarItem(icon: Icon(Icons.person),
              title: Text('Profile')
          ),
        ],
      )
    );

  }
}
