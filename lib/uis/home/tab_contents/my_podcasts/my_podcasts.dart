import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPodcasts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
          child: Text(
        "My Podcasts",
        style: GoogleFonts.redHatDisplay(
          color: CupertinoTheme.brightnessOf(context) == Brightness.dark
              ? Colors.white
              : Colors.black,
        ),
      )),
    );
  }
}
