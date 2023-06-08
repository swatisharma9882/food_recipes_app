import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.065,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(width: 1, color: const Color(0xffD9D9D9)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search recipes',
          hintStyle: const TextStyle(color: Color(0xffC1C1C1)),
          prefixIcon: IconButton(
            icon: const Icon(
              Icons.search_rounded,
              color: Color(0xffC1C1C1),
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
