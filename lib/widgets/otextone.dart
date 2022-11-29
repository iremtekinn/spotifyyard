import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Otextone extends StatefulWidget {
  const Otextone({super.key});

  @override
  State<Otextone> createState() => _OtextoneState();
}

class _OtextoneState extends State<Otextone> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 40,
        color: Color(0xff42C83C),
        child: Text(
          "Look at all",
          style: GoogleFonts.sahitya(
            textStyle: Theme.of(context).textTheme.headline4,
            fontSize: 20
          ),
        ));
  }
}
