import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key, required this.hint});
final String hint;
  @override
  Widget build(BuildContext context) {
    TextEditingController searchController=TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
          onFieldSubmitted: (value){

          },
          controller: searchController,
          decoration: InputDecoration(
            hintText: hint,
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          )),
    );
  }
}
