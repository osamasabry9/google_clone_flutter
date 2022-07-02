import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_clone/shared/config/app_colors.dart';
import 'package:google_clone/views/pages/search_screen.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'assets/images/google-logo.png',
            height: size.height * 0.15,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: size.width > 768 ? size.width * 0.6 : size.width * 0.9,
          child: TextFormField(
            onFieldSubmitted: (query) {
               Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SearchScreen(
                            searchQuery: query,
                            start: '0',
                          ),
                        ),
                      );
            },
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.searchBorder),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/images/search-icon.svg',
                  color: AppColors.searchBorder,
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/images/mic-icon.svg',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
