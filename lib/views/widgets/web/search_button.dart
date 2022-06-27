import 'package:flutter/material.dart';
import 'package:google_clone/shared/config/app_colors.dart';

class SearchButton extends StatelessWidget {
  final String titel;
  const SearchButton({super.key, required this.titel});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      color: AppColors.searchColor,
      padding:const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      onPressed: () {},
      child: Text(titel),
    );
  }
}
