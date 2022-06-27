import 'package:flutter/material.dart';
import 'package:google_clone/views/widgets/web/language_text.dart';

class TranslationButtons extends StatelessWidget {
  const TranslationButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: const [
        Text('Google Offered in : '),
        LanguageText(title: 'English'),
        SizedBox(width: 5),
        LanguageText(title: 'Arabic'),
        SizedBox(width: 5),
        LanguageText(title: 'French'),
        SizedBox(width: 5),
        LanguageText(title: 'German'),
        SizedBox(width: 5),
        LanguageText(title: 'Italian'),
        SizedBox(width: 5),
        LanguageText(title: 'Japanese'),
        SizedBox(width: 5),
        LanguageText(title: 'Korean'),
      ],
    );
  }
}
