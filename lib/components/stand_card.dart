import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StandCard extends StatefulWidget {
  final String name;
  final String img;
  const StandCard({
    super.key,
    required this.name,
    required this.img,
  });

  @override
  State<StandCard> createState() => _StandCardState();
}

class _StandCardState extends State<StandCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color.fromRGBO(112, 92, 233, 0.3),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage(widget.img),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 20),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.name,
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.width * 0.035,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.2),
                    Icon(
                      Icons.bookmark_add_outlined,
                      color: Color.fromRGBO(112, 92, 233, 1),
                      size: 30,
                    ),
                  ],
                ),
                SizedBox(height: 35),
                GestureDetector(
                  onTap: () async {},
                  child: Container(
                    height: MediaQuery.of(context).size.width * 0.12,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(112, 92, 233, 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        "Lihat menu",
                        style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
