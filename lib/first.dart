import 'package:flutter/material.dart';
import 'package:zomato/second.dart';


class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {

  bool val = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Apna Food Zone",style: TextStyle(color: Colors.orange),),),
        backgroundColor: Colors.white,
        actions: [
          Icon(Icons.share,color: Colors.black,),
        ],
        elevation: 20,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.fromLTRB(20, 30, 20, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset: Offset(3, 3),
                      ),
                      BoxShadow(
                        color: Colors.white,
                        spreadRadius: 1,
                        blurRadius: 8,
                        offset: Offset(-3, -3),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                      hintText: 'Search for restaurant,item or more',
                      // labelText: "",
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return second();
                    },));
                  },
                  child: Container(
                    height: 172,
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          spreadRadius: 1,
                          blurRadius: 8,
                          offset: Offset(3, 3),
                        ),
                        BoxShadow(
                          color: Colors.white,
                          spreadRadius: 1,
                          blurRadius: 8,
                          offset: Offset(-3, -3),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(48),
                        child: Image.asset(
                          "pics/s2.jpg",
                          // fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Row(
          //   children: [
          //     Expanded(
          //       child: Container(
          //         height: 172,
          //         width: double.infinity,
          //         margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
          //         decoration: BoxDecoration(
          //           color: Colors.blue,
          //           borderRadius: BorderRadius.circular(20),
          //           boxShadow: [
          //             BoxShadow(
          //               color: Colors.black45,
          //               spreadRadius: 1,
          //               blurRadius: 8,
          //               offset: Offset(3, 3),
          //             ),
          //             BoxShadow(
          //               color: Colors.white,
          //               spreadRadius: 1,
          //               blurRadius: 8,
          //               offset: Offset(-3, -3),
          //             ),
          //           ],
          //         ),
          //         child: ClipRRect(
          //           borderRadius: BorderRadius.circular(20),
          //           child: SizedBox.fromSize(
          //             size: Size.fromRadius(48),
          //             child: Image.asset(
          //               "pics/s2.jpg",
          //               // fit: BoxFit.fill,
          //             ),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
