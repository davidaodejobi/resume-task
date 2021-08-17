import 'package:flutter/material.dart';

class TextFormFields extends StatelessWidget {
  final TextEditingController control;
  final String title;
  TextFormFields({required this.control, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
      ),
      child: TextFormField(
        // decoration: InputDecoration(labelText: 'First Name'),
        controller: control,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color(0xFFECF2F4),
            ),
          ),
          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
          labelText: title,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          labelStyle: TextStyle(color: Colors.blue),
          // fillColor: Colors.grey.shade900,
          filled: true,
        ),
      ),
    );
  }
}
