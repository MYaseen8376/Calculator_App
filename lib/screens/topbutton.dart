import 'package:flutter/material.dart';

class TopButton extends StatelessWidget {
  final VoidCallback onpres;
  final String title;
  const TopButton({super.key, required this.onpres, required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          onTap: onpres,
          child: Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
