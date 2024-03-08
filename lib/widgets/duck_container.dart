import 'package:flutter/material.dart';

class DuckContainer extends StatefulWidget {
  const DuckContainer({super.key});

  @override
  State<DuckContainer> createState() => _DuckContainerState();
}

class _DuckContainerState extends State<DuckContainer> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 159, 104, 74),
      child: Column(
        children: [
          const Text(
            "Name",
            style: TextStyle(
              color: Color.fromARGB(255, 29, 27, 32),
              fontSize: 16,
            ),
          ),
          TextButton(
              onPressed: () => {},
              child: const Text(
                "Sus",
                style: TextStyle(
                  color: Color.fromARGB(255, 236, 214, 50),
                  fontSize: 14,
                ),
              ))
        ],
      ),
    );
  }
}
