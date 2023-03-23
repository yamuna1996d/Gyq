import 'package:flutter/material.dart';
class DropDownSection extends StatefulWidget {
  const DropDownSection({Key? key}) : super(key: key);

  @override
  State<DropDownSection> createState() => _DropDownSectionState();
}

class _DropDownSectionState extends State<DropDownSection> {
  var dropdownValueOne;
  String type = "";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Row(
        children: [
          Expanded(
            child: Text("Overview",style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500
            ),),
          ),
          Container(
              width: MediaQuery.of(context)
                  .size
                  .width *
                  0.28,
              height: 35,
              margin: const EdgeInsets.only(
                  left: 15.0, right: 10.0),
              padding:
              const EdgeInsets.symmetric(
                  horizontal: 17,
                  vertical: 1),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius:
                BorderRadius.circular(5),
                border: Border.all(
                    color: Colors.grey,
                    style: BorderStyle.solid,
                    width: 1.00),
              ),
              child:
              DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: dropdownValueOne,
                  style: TextStyle(color: Colors.black),
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  ),
                  onChanged:
                      (String? newValue) {
                    setState(() {
                      dropdownValueOne =
                          newValue ?? "";
                      print(dropdownValueOne);


                    });
                  },
                  hint: const Text(
                    'Weekly',
                    style:
                    TextStyle(fontSize: 14,color: Colors.white),
                  ),
                  items: <String>[
                    'Weekly',
                    'Daily',
                  ].map<
                      DropdownMenuItem<
                          String>>(
                          (String value) {
                        return DropdownMenuItem<
                            String>(
                          value: value,
                          child: Text(value,style: TextStyle(
                              fontSize: 14,color: Colors.white
                          ),),
                        );
                      }).toList(),
                ),
              )),

        ],
      ),
    );
  }
}
