import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      '/home': (context) => home(),
      '/settings': (context) => settings(),
      '/profile': (context) => profile(),
    }, home: myhome());
  }
}

class myhome extends StatelessWidget {
  const myhome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  const  SizedBox(
          width: double.infinity,
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("data")])),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, // Default selected tab
        selectedItemColor: Colors.amber[800],
        onTap: (index) {
          switch (index) {
            case 0:
              // Navigator.pushNamed(context, '/settings');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const settings()),
              );
              break;
            case 1:
              Navigator.pushNamed(context, '/home');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const home()));
              break;
            case 2:
              Navigator.pushNamed(context, '/profile');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const profile()));
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.abc)),
        Center(child: Text("home")),
      ],
    ));
  }
}

class settings extends StatelessWidget {
  const settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.abc)),
        Center(child: Text("setti")),
      ],
    ));
  }
}
// class cat extends StatelessWidget {
//   const cat({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Text("cat");
//   }
// }
class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.abc)),
        Center(child: Text("profile")),
      ],
    ));
  }
}
