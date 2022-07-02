import 'package:flutter/material.dart';
import 'package:google_clone/shared/config/app_colors.dart';

class SearchTab extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final String text;
  const SearchTab({
    super.key,
    required this.icon,
    this.isActive = false,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isActive ? AppColors.blueColor : Colors.grey,
            ),
            const SizedBox(
              width: 3,
            ),
            Text(
              text,
              style: TextStyle(
                color: isActive ? AppColors.blueColor : Colors.grey,
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 7,
            ),
          ],
        ),
        isActive
            ? Container(
                height: 3,
                width: 40,
                color: AppColors.blueColor,
              )
            : Container(),
      ],
    );
  }
}
