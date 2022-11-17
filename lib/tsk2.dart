import 'package:flutter/material.dart';

class tsk2 extends StatefulWidget {

  int total;

  tsk2(this.total);

  @override
  State<tsk2> createState() => _tsk2State();
}

class _tsk2State extends State<tsk2> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: Offset(4, 4),
                    ),
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: Offset(-4, -4),
                    ),
                  ],
                ),
                alignment: Alignment.center,
                // margin: EdgeInsets.only(left: 95),
                child: Image.asset(
                    "pics/success.jpg",
                  height: 200,
                  width: 200,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                height: 100,
                width: double.infinity,
                alignment: Alignment.center,
                child: Text("Order Recieved",style: TextStyle(fontSize: 50,color: Colors.green),),
              ),),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text("Bill no. ",style: TextStyle(fontSize: 30),),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text("Amount : ${widget.total}",style: TextStyle(fontSize: 30),),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text("Gst : ${widget.total*18/100}",style: TextStyle(fontSize: 30),),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text("Total : ${widget.total+(widget.total*18/100)}",style: TextStyle(fontSize: 30),),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 130,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text("Thanks so much for your order!\n I hope you enjoy your new purchase! ...",style: TextStyle(fontSize: 25),),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
