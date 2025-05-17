import 'package:flutter/material.dart';

class Form extends StatelessWidget {
  const Form({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration:InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25)
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25)
        ),
        //prefixIcon: Icon()
      ),

    );
  }
}

