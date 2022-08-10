import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fyp2/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            title: const Text('EZPOP'),
            centerTitle: true,
            backgroundColor: Colors.grey[500],
            elevation: 0.0,
            actions: [
              MaterialButton(
                onPressed: () => FirebaseAuth.instance.signOut(),
                color: Colors.cyan,
                child: const Text('Sign Out'),
              ),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text('Settings'),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.person,
                  ),
                  title: const Text('Profile'),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const Profile();
                        },
                      ),
                    );
                  },
                ),
                MaterialButton(
                  onPressed: () => FirebaseAuth.instance.signOut(),
                  color: Colors.cyan,
                  child: const Text('Sign Out'),
                ),
              ],
            ),
          ),
          body: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      String newData = await _showStatelessDialog(context);
                      print(newData);
                    },
                    child: Text(
                      "Add Product",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
