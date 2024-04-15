// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Gender extends StatelessWidget {
  final IconData genderIcon;
  final String gender;
  final bool checked;

  const Gender(
      {Key? key,
      required this.genderIcon,
      required this.gender,
      required this.checked})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: 200,
      width: width / 2.3,
      color: const Color.fromARGB(255, 71, 159, 231),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
                color: checked ? Colors.orange : Colors.white,
                width: checked ? 5 : 0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              genderIcon,
              size: 50,
              color: Colors.white,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              gender,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
