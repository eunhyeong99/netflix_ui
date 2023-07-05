import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netflix_ui/screens/constants.dart';
import 'package:netflix_ui/screens/profile/components/add_card.dart';
import 'package:netflix_ui/screens/profile/components/profile_card.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Netfilx",
          style: kTitleTextStyle,
        ),
        actions: [
          Icon(FontAwesomeIcons.pen, size: 18.0),
          const SizedBox(width: 12.0),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Netflix를 시청할 프로필을 선택하세요.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 25.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Wrap(
                spacing: 25.0,
                children: [
                  ProfileCard(),
                  AddCard(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
