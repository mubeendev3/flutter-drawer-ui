import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int myIndex = 0;
  static const double sizedBoxWidthValue = 25;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true,
          iconTheme: const IconThemeData(
            color: Colors.black54,
          )),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          // width: 300,
          elevation: 100,
          surfaceTintColor: Colors.white,
          shadowColor: Colors.black,
          backgroundColor: Colors.white,
          child: Column(
            children: [
              Container(
                color: Colors.blue,
                height: 250,
                width: double.infinity,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/dp.jpg"),
                      radius: 50,
                    ),
                    Text(
                      "Mubeen Mehmood",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "mubeendev3@gmail.com",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  margin: const EdgeInsets.all(30),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.home),
                          SizedBox(
                            width: sizedBoxWidthValue,
                          ),
                          Text("Home"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.favorite_outline),
                          SizedBox(
                            width: sizedBoxWidthValue,
                          ),
                          Text("Favourite"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.workspaces_filled),
                          SizedBox(
                            width: sizedBoxWidthValue,
                          ),
                          Text("Workflow"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.restore),
                          SizedBox(
                            width: sizedBoxWidthValue,
                          ),
                          Text("Updates"),
                        ],
                      ),
                      Divider(
                        height: 2,
                        color: Colors.black26,
                        thickness: 2,
                      ),
                      Row(
                        children: [
                          Icon(Icons.rebase_edit),
                          SizedBox(
                            width: sizedBoxWidthValue,
                          ),
                          Text("Plugin"),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.notification_important),
                          SizedBox(
                            width: sizedBoxWidthValue,
                          ),
                          Text("Notification"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("Drawer Design"),
        ),
        body: const ColoredBox(
          color: Colors.blueAccent,
          child: Center(
            child: Text(
              'CodingWithMubeen',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white54,
              ),
            ),
          ),
        ), //Center
      ), //Scaffold
    );
  }
}
