import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key, required this.title, required this.press,
  });

  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: GoogleFonts.montserrat(textStyle: Theme.of(context)
                  .textTheme
                  .headline6?.copyWith(color: Colors.black))),
          TextButton(
            onPressed: press,
            child: Text("Sell all", style: GoogleFonts.montserrat(textStyle: Theme.of(context)
                .textTheme
                .caption?.copyWith(color: kAccentColor))),
          )
        ]
    );
  }
}