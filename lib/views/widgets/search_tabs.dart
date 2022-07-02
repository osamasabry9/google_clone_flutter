import 'package:flutter/material.dart';
import 'package:google_clone/views/widgets/search_tab.dart';

class SearchTabs extends StatelessWidget {
  const SearchTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: Wrap(
        direction: Axis.vertical,
        alignment: WrapAlignment.end,
        spacing: 20,
        children: const [
          SearchTab(
            text: 'All',
            icon: Icons.search,
            isActive: true,
          ),
          SearchTab(
            text: 'Images',
            icon: Icons.image,
          ),
          SearchTab(text: 'Videos', icon: Icons.video_call),
          SearchTab(text: 'News', icon: Icons.new_releases),
          SearchTab(text: 'Maps', icon: Icons.map),
          SearchTab(text: 'More', icon: Icons.more_vert),
        ],
      ),
    );
  }
}
