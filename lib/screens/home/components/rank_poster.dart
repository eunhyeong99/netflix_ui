import 'package:flutter/material.dart';

class RankPoster extends StatelessWidget {
  final String rank;
  final String posterUrl;

  const RankPoster({
    required this.posterUrl,
    required this.rank,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 30.0,
          child: Image(
            image: AssetImage(posterUrl),
            fit: BoxFit.cover,
            width: 120.0,
            height: 200.0,
          ),
        ),
        Positioned(
          child: Stack(
            children: [
              Text(
                rank,
                style: TextStyle(
                  fontSize: 100.0,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 3
                    ..color = Colors.white,
                ),
              ),
              Text(
                rank,
                style: TextStyle(
                  fontSize: 100.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Container(
                width: 150.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black,
                      Colors.black.withOpacity(0.0),
                    ],
                    stops: [0.0, rank != "!" ? 0.2 : 0.0],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
