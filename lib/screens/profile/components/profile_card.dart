import 'package:flutter/material.dart';
import 'package:netflix_ui/main_screens.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Image(
              image: AssetImage("assets/images/dog.jpg"),
              width: 100.0,
              height: 100.0,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            "조은형",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      onTap: () {
        Navigator.pushNamed(context, MainScreens.routeName);
      },
    );
  }
}
