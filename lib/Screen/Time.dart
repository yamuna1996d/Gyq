import 'package:flutter/material.dart';
class Time extends StatelessWidget {
  const Time({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
      MainAxisAlignment
          .center,
      children: const [
        Padding(
          padding:
          EdgeInsets
              .only(
              left: 50,
              top: 10),
          child: Text(
            "5 mins ago",
            style: TextStyle(
                fontSize: 10,
                color: Colors
                    .grey),
            textAlign:
            TextAlign.end,
          ),
        ),
      ],
    );
  }
}