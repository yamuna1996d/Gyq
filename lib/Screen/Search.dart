import 'package:flutter/material.dart';
class Search extends StatelessWidget {
  const Search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 0,
                      blurRadius: 3,
                      offset: const Offset(0.0, 0.9),
                    ),
                  ],
                ),
                child: TextFormField(
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      isDense: true,
                      contentPadding: EdgeInsets.only(top: 7),
                      prefixIcon: Padding(
                          padding:
                          EdgeInsets.only(top: 7.0, bottom: 7.0, left: 10.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.red,
                          )),
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.grey),
                      enabled: true),
                ),
              ),
            )),
      ),
    );
  }
}