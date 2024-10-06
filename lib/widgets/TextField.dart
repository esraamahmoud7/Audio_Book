import 'package:flutter/material.dart';

import '../Constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.hint, required this.inVisible, required this.onChanged,
  });

  final String hint;
  final bool inVisible;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: TextFormField(
        obscureText: inVisible,
        validator: (data)
        {
          if(data!.isEmpty)
            {
              return 'Field is required';
            }
        },
        onChanged: onChanged,
        decoration: InputDecoration(
            filled: true,           // Enable background filling
            fillColor: KTextFieldColor,
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey),
            contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),  // Padding inside the TextField
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),  // Rounded corners
              borderSide: BorderSide.none,

            )
        ),
      ),
    );
  }
}