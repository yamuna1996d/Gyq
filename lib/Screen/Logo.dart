import 'package:flutter/material.dart';
class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SizedBox(
            height: 40,
            width: 60,
            child: Image.asset("assets/gyq.jpeg"),
          ),
        )
      ],
    );
  }
}
