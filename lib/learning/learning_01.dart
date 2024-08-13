import 'package:flutter/material.dart';

class Learning01 extends StatelessWidget {
  const Learning01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        // leading: IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
        title: const Text(
          "ខ្មែរ",
          style: TextStyle(
              color: Colors.yellow, fontSize: 24, fontWeight: FontWeight.w700),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.camera_alt),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                'https://avatars3.githubusercontent.com/u/14101776?v=4',
              ),
            ),
            GestureDetector(
              onLongPress: () {
                print(TargetPlatform.iOS);
              },
              child: Container(
                margin: const EdgeInsets.only(left: 0),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.black45,
                  decoration: const BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0)),
                  ),
                  child: const Text(
                    'Flutter',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.play_circle_filled),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Image.network(
                  "https://i.pinimg.com/736x/c8/ff/5a/c8ff5aedb4e15571afabe53b777694f2.jpg"),
            ),
            const ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const ListTile(
              leading: Icon(Icons.insert_emoticon),
              title: Text("About Us"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.place),
      ),
    );
  }
}
