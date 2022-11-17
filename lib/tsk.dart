import 'package:flutter/material.dart';
import 'package:zomato/tsk2.dart';

class tsk extends StatefulWidget {
  const tsk({Key? key}) : super(key: key);

  @override
  State<tsk> createState() => _tskState();
}

class _tskState extends State<tsk> {

  List<String> img = ["pics/bhel.jpg","pics/burger.jpg","pics/crm.jpg","pics/locho.jpg","pics/dhosa.jpg","pics/sandwich.jpg","pics/samosa.jpg","pics/kajucarry.jpg","pics/roti.jpg","pics/puff.jpg","pics/pizza.jpg","pics/paneertikka.jpg","pics/nan.jpg","pics/cock.jpg","pics/icecream.jpg","pics/lassi.jpg","pics/milk.jpg"];
  List<String> ti = ["Bhel","Burger","Ice Cream","Locho","Dhosa","Sandwich","Samosa","Kaju Karry","Roti","Puff","Pizza","Paneer Tikka","Nan","Cock","Ice cream","Lassi","Milk"];
  List<String> ps = ["50","55","60","30","110","50","30","180","25","20","599","180","25","80","90","30","30"];
  List<bool> bl = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false];

  List<int> a = [];

  late int total = 0;

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
          Expanded(
            child: ListView.builder(
                  itemCount: ti.length,
                  itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       image: DecorationImage(
                       image: AssetImage(img[index]),
                       fit: BoxFit.fill,
                       ),
                      ),
                    ),
                    title: Text("${ti[index]}"),
                    subtitle: Text("${ps[index]}"),

                    trailing: Checkbox(
                        onChanged: (value) {
                          bl[index] = value!;

                          if(bl[index])
                          {
                            total = total + int.parse(ps[index]);
                          }
                          else
                            {
                              total = total - int.parse(ps[index]);
                              setState(() {

                              });
                            }

                          setState(() {

                          });
                        } ,value: bl[index]),
                  );
                },),
          ),
          Container(
              height: 85,
              width: double.infinity,
              color: Colors.cyan,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Total         ",style: TextStyle(fontSize: 30),),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("${total}",style: TextStyle(fontSize: 30),),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            if(total!=0) {
                              Navigator.push(context, MaterialPageRoute(builder: (
                                  context) {
                                return tsk2(total);
                              },));
                            }
                            setState(() {

                            });
                          },
                          child: Container(
                            height: 85,
                            width: 80,
                            color: Colors.cyan,
                            margin: EdgeInsets.only(left: 50),
                            alignment: Alignment.center,
                            child: Text("Place Order",style: TextStyle(fontSize: 15),),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            ),
        ],
      ),
    );
  }
}
