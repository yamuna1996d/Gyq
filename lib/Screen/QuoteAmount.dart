import 'package:flutter/material.dart';
class QuoteAmount extends StatelessWidget {
  const QuoteAmount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons
              .price_change_outlined,
          size: 15,
          color: Colors.grey,
        ),
        SizedBox(
          width: 12,
        ),
        Text(
          "Quote Amount :   ",
          style: TextStyle(
              fontSize: 12,
              fontWeight:
              FontWeight
                  .w500,
              color:
              Colors.grey,
              letterSpacing:
              0.2),
        ),
        Text(
          "\$ 56.789",
          style: TextStyle(
              fontSize: 15,
              fontWeight:
              FontWeight
                  .w500,
              color:
              Colors.black,
              letterSpacing:
              0.2),
        ),
        SizedBox(
          width: 12,
        ),
        Expanded(
            child: Icon(
              Icons.arrow_forward,
              size: 18,
              color: Colors.grey,
            )),
      ],
    );
  }
}