import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallText extends StatelessWidget {

  Color? color;
  final String text;
  double size;
  double height;
  TextOverflow overFlow;

  SmallText({Key? key,
    this.color = const Color(0xFFa9a29f),
    required this.text,
    this.size = 12,
    this.height = 1.2,
    this.overFlow = TextOverflow.ellipsis
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        overflow: overFlow,
        style: GoogleFonts.roboto(
          textStyle: TextStyle(
            color: color,
            fontSize: size,
            height: height
          ),
        )

    );
  }
}
