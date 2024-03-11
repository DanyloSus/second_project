import "package:flutter/material.dart";

import "package:second_project/widgets/duck_container.dart";

import "package:second_project/data/ducks.dart";

void main() {
  // runApp(const MaterialApp(
  //   home: Text("Sus"),
  // ));
  // for faster starting the app

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 90, 193, 97)),
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 30,
            crossAxisSpacing: 30,
            padding: const EdgeInsets.all(20),
            children: [
              // lambda & sugar
              ...duckArray!.map(
                (e) => (DuckContainer(
                  e.allDetails["sound"],
                  name: e.allDetails["name"]!,
                  canFly: e.allDetails["canFly"],
                  image: e.allDetails["image"],
                  quack: e.quack(e.sound!),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
