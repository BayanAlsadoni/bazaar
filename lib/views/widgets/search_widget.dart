import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 7,
              offset: Offset(0, 3),
            )
          ]),
      child: TextField(
        textAlign: TextAlign.right,
        decoration: const InputDecoration(
            hintText: "بحث",
            border: InputBorder.none,
            suffixIcon: Icon(Icons.search)),
        onSubmitted: (String value) {
        },
      ),
    );
  }
}
