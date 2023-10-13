import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onpres;
  const Button(
      {super.key,
      required this.title,
      this.color = const Color.fromARGB(255, 109, 62, 62),
      required this.onpres});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          onTap: onpres,
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: Center(
              child: Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
