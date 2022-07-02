import 'package:flutter/material.dart';
import 'package:google_clone/shared/config/app_colors.dart';
import 'package:google_clone/views/widgets/link_text.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchResultComponent extends StatelessWidget {
  final String linkToGo;
  final String link;
  final String text;
  final String desc;
  //final String imageUrl;
  const SearchResultComponent({
    Key? key,
    required this.linkToGo,
    required this.link,
    required this.text,
    required this.desc,
    //required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Row(
        //   children: [
        //     Image.network(imageUrl , fit: BoxFit.cover,),
        //   ],
        // ),
        Text(
          link,
        ),
        // showing the text to display as header with link
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: LinkText(
            link: link,
            text: text,
            textStyle: const TextStyle(
              color: AppColors.blueColor,
              fontSize: 20,
            ),
            onTap: () async {
              if (await canLaunch(linkToGo)) {
                await launch(linkToGo);
              }
            },
          ),
        ),
        // showing the meta data or the description of the wbesite
        Text(
          desc,
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
