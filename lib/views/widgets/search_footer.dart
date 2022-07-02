import 'package:flutter/material.dart';
import 'package:google_clone/shared/config/app_colors.dart';

class SearchFooter extends StatelessWidget {
  const SearchFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          color: AppColors.footerColor,
          padding: EdgeInsets.symmetric(
            vertical: 15,
            horizontal: size.width <= 768 ? 10 : 150,
          ),
          child: Row(
            children: [
              Text(
                'Egypt',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 0.5,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.circle,
                color: Color(0xFF70757A),
                size: 12,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Zagazig 1',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
        ),
        const Divider(height: 9, thickness: 0, color: Colors.black),
        Container(
          color: AppColors.footerColor,
          padding: EdgeInsets.symmetric(
            horizontal: size.width <= 768 ? 10 : 50,
          ),
          child: Row(
            children: [
              Text(
                'Help',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                'Send feedback',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                'Privacy ',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                'Terms',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
