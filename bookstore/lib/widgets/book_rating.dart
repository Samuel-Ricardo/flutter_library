import 'package:bookstore/constants.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  final double score;
  const BookRating({required Key key, required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
              offset: const Offset(3, 7),
              blurRadius: 20,
              color: const Color(0xFF3D3D3F).withOpacity(.5))
        ],
      ),
      child: Column(
        children: <Widget>[
          const Icon(Icons.star, color: ICON_COLOR, size: 15),
          const SizedBox(height: 5),
          Text(
            "$score",
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
