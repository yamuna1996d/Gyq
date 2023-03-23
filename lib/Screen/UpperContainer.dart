import 'package:flutter/material.dart';

class UpperContainer extends StatelessWidget {
  const UpperContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 10,right: 10),
              child: Container(
                height: 154,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                     Radius.circular(10.0),
                  ),
                ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                     // image: DecorationImage(image: AssetImage(""))
                    ),
                    child: const Icon(Icons.book_outlined,color: Colors.white,size: 30,)
                  ),
                  const SizedBox(height: 5,),
                  const Text("3421",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),),
                  const SizedBox(height: 5,),
                  const Text("Received Quotes",style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                  ),
                  textAlign: TextAlign.center,),
                  const SizedBox(height: 10,),
                ],
            ),
          ),
        ),
            )),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 13,top: 10,right: 13),
              child: Container(
                height: 154,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            // image: DecorationImage(image: AssetImage(""))
                          ),
                          child: const Icon(Icons.email_outlined,color: Colors.white,size: 30,)
                      ),
                      const SizedBox(height: 5,),
                      const Text("453",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),),
                      const SizedBox(height: 10,),
                      const Text("Enquires",style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      ),
                        textAlign: TextAlign.center,),
                      const SizedBox(height: 10,),
                    ],
                  ),
                ),
              ),
            )),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10,top: 10,right: 20),
              child: Container(
                height: 154,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            // image: DecorationImage(image: AssetImage(""))
                          ),
                          child: const Icon(Icons.history_outlined,color: Colors.white,size: 30,)
                      ),
                      const SizedBox(height: 5,),
                      const Text("1243",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),),
                      const SizedBox(height: 10,),
                      const Text("History",style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                      ),
                        textAlign: TextAlign.center,),
                      const SizedBox(height: 10,),
                    ],
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
