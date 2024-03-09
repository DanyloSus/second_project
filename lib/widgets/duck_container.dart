import 'package:flutter/material.dart';

class DuckContainer extends StatefulWidget {
  const DuckContainer(this.sound,
      {required this.name,
      this.image = "question", // default value
      required this.canFly,
      required this.quack,
      super.key});

  // get all values
  final String sound;
  final String quack;
  final String name;
  final String image;
  final bool canFly;

  @override
  State<DuckContainer> createState() => _DuckContainerState();
}

class _DuckContainerState extends State<DuckContainer> {
  @override
  Widget build(BuildContext context) {
    var image = widget.image;

    // snackbar
    final snackBar = SnackBar(
      content: Text(widget.quack),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {}, // lambda
      ),
    );

    return Card(
      color: const Color.fromARGB(255, 159, 104, 74),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/images/$image.png",
            width: double.infinity,
            height: 77,
            fit: BoxFit.fill,
          ),
          Text(
            widget.name,
            style: const TextStyle(
              color: Color.fromARGB(255, 29, 27, 32),
              fontSize: 16,
            ),
          ),
          TextButton(
              onPressed: () => // lambda
                  // call snackbar
                  ScaffoldMessenger.of(context).showSnackBar(snackBar),
              child: Text(
                widget.sound,
                style: const TextStyle(
                  color: Color.fromARGB(255, 236, 214, 50),
                  fontSize: 14,
                ),
              ))
        ],
      ),
    );
  }
}
