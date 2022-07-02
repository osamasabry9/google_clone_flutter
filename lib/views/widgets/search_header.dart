import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/shared/config/app_colors.dart';
import 'package:google_clone/views/pages/search_screen.dart';

class ShearchHeader extends StatelessWidget {
  const ShearchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
        top: 25,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 28,
              right: 15,
              top: 4,
            ),
            child: Image.asset(
              'assets/images/google-logo.png',
              height: 38,
              width: 92,
            ),
          ),
          const SizedBox(width: 27),
          Container(
            width: size.width * 0.45,
            height: size.height * 0.07,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              color: AppColors.searchColor,
              borderRadius: BorderRadius.circular(22),
              border: Border.all(
                color: AppColors.searchColor,
              ),
            ),
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
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                suffixIcon: Container(
                  constraints: const BoxConstraints(maxWidth: 150),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset('assets/images/mic-icon.svg',
                          height: 20, width: 20),
                      const SizedBox(width: 10),
                      const Icon(
                        Icons.search,
                        color: AppColors.blueColor,
                      ),
                    ],
                  ),
                ),
                hintText: 'Search',
                hintStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
