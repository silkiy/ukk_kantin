import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KantinTile extends StatelessWidget {
  final String? title;
  final String? colorBox;
  final String? colorFont;
  const KantinTile({
    super.key,
    this.title,
    this.colorBox,
    this.colorFont,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.2,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: colorBox == "purple"
                ? const Color.fromRGBO(112, 92, 233, 1)
                : const Color.fromRGBO(255, 255, 255, 1),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 6,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Center(
            child: Text(
              title ?? "",
              style: GoogleFonts.poppins(
                fontSize: MediaQuery.of(context).size.width * 0.025,
                fontWeight: FontWeight.w700,
                color: colorFont == "black"
                    ? const Color.fromRGBO(0, 0, 0, 1)
                    : const Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
