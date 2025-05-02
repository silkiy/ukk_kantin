import 'package:flutter/material.dart';

class SearchBarComponents extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  const SearchBarComponents({
    super.key,
    this.hintText,
    this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.5,
              color: const Color.fromRGBO(112, 92, 233, 1),
            ),
            borderRadius: BorderRadius.circular(24),
          ),
          labelText: labelText,
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
