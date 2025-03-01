import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardDetailOrder extends StatefulWidget {
  const CardDetailOrder({
    super.key,
  });

  @override
  State<CardDetailOrder> createState() => _CardDetailOrderState();
}

class _CardDetailOrderState extends State<CardDetailOrder> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 6,
            spreadRadius: 2,
          ),
        ],
      ),
      padding: EdgeInsets.all(size.width * 0.04),
      child: Column(
        children: [
          _buildOrderItem(
            size,
            "1x",
            "name",
            "price",
          ),
          _buildOrderItem(
            size,
            "1x",
            "name",
            "price",
          ),
          Divider(),
          _buildSummaryRow(
            "title",
            "amount",
          ),
          SizedBox(height: 10),
          _buildDiscountInfo(),
          SizedBox(height: 10),
          Divider(),
          _buildSummaryRow(
            "Total",
            "amount",
            isBold: true,
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          _buildActionButton(
            size,
            "Dimasak",
          ),
        ],
      ),
    );
  }

  Widget _buildOrderItem(Size size, String qty, String name, String price) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.height * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(size.width * 0.015),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff705CE9),
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  qty,
                  style: TextStyle(
                    color: Color(0xff705CE9),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: size.width * 0.02),
              Text(
                name,
                style: TextStyle(
                  fontSize: size.width * 0.04,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Text(
            price,
            style: TextStyle(
              fontSize: size.width * 0.04,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryRow(
    String title,
    String amount, {
    bool isBold = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: isBold ? 18 : 16,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              color: isBold ? Colors.black : Colors.grey,
            ),
          ),
          Text(
            amount,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDiscountInfo() {
    return Row(
      children: [
        Icon(
          Icons.local_offer,
          color: Color(0xff705CE9),
          size: 18,
        ),
        SizedBox(width: 5),
        RichText(
          text: TextSpan(
            text: "Diskon Hari Guru, ",
            style: TextStyle(color: Colors.black),
            children: [
              TextSpan(
                text: "50% off",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildActionButton(Size size, String text) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: size.width * 0.12,
        decoration: BoxDecoration(
          color: Color.fromRGBO(112, 92, 233, 0.2),
          border: Border.all(
            width: 1.5,
            color: Color(0xff705CE9),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.nunitoSans(
              fontSize: size.width * 0.045,
              fontWeight: FontWeight.w700,
              color: Color(0xff705CE9),
            ),
          ),
        ),
      ),
    );
  }
}
