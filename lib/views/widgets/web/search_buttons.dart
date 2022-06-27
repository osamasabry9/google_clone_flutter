import 'package:flutter/material.dart';
import 'package:google_clone/views/widgets/web/search_button.dart';

class SearchButtons extends StatelessWidget {
  const SearchButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            SearchButton(
              titel: 'Googel Search',
            ),
            SizedBox(
              width: 10,
            ),
            SearchButton(
              titel: "I'm feeling lucky",
            ),
          ],
        ),
      ],
    );
  }
}
