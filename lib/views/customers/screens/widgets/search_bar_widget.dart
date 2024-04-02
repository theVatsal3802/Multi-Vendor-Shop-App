import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          prefixIcon: const Icon(Icons.search),
          fillColor: Colors.grey.shade200,
          hintText: "Search for products...",
          border: const OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }
}
