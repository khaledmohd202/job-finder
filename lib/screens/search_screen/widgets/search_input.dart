import 'package:flutter/material.dart';
import 'package:job_finder/common/constants.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Search for job title',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
                contentPadding: EdgeInsets.zero,
                prefixIcon: Container(
                  padding: const EdgeInsets.all(25),
                  child: Image.asset(
                    kSearchIconButton,
                    width: 20,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            height: 60,
            width: 60,
            padding: const EdgeInsets.all(13),
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Image.asset(kFilterIconButton),
          ),
        ],
      ),
    );
  }
}
