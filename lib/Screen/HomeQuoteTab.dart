import 'package:flutter/material.dart';
class HomeReceivedQuotesTabs extends StatelessWidget {
  const HomeReceivedQuotesTabs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        children: [
          Expanded(
              child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: 'Received  |  ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: '23 ',
                        style: TextStyle(color: Colors.red, fontSize: 12),
                      ),
                      TextSpan(
                        text: 'Quotes',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ],
                  )))
        ],
      ),
    );
  }
}