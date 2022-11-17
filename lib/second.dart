import 'package:flutter/material.dart';

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {

  List<bool> bl = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false];
  List<String> fd =["Pizza","Dhosa","Bhel","Burger","Kaju karry","Locho","Paneer tikka","Puff","Samosa","Sandwich","wraps","Roti","Nan","Slice","Sosyo","ice cream"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: Column(
        children: [
          CheckboxListTile(
              title: Text("${fd[0]}"),
              subtitle: Text("200"),
              onChanged: (value) {
            bl[0] = value!;

            setState(() {

            });

          } ,value: bl[0]),
          CheckboxListTile(
              title: Text("${fd[1]}"),
              subtitle: Text("200"),
              onChanged: (value) {
                bl[1] = value!;

                setState(() {

                });

              } ,value: bl[1]),
          CheckboxListTile(
              title: Text("${fd[2]}"),
              subtitle: Text("200"),
              onChanged: (value) {
                bl[2] = value!;

                setState(() {

                });

              } ,value: bl[2]),
          CheckboxListTile(
              title: Text("${fd[3]}"),
              subtitle: Text("200"),
              onChanged: (value) {
                bl[3] = value!;

                setState(() {

                });

              } ,value: bl[3]),
          CheckboxListTile(
              title: Text("${fd[4]}"),
              subtitle: Text("200"),
              onChanged: (value) {
                bl[4] = value!;

                setState(() {

                });

              } ,value: bl[4]),
          CheckboxListTile(
              title: Text("${fd[5]}"),
              subtitle: Text("200"),
              onChanged: (value) {
                bl[5] = value!;

                setState(() {

                });

              } ,value: bl[5]),
          CheckboxListTile(
              title: Text("${fd[6]}"),
              subtitle: Text("200"),
              onChanged: (value) {
                bl[6] = value!;

                setState(() {

                });

              } ,value: bl[6]),
          CheckboxListTile(
              title: Text("${fd[7]}"),
              subtitle: Text("200"),
              onChanged: (value) {
                bl[7] = value!;

                setState(() {

                });

              } ,value: bl[7]),
          CheckboxListTile(
              title: Text("${fd[8]}"),
              subtitle: Text("200"),
              onChanged: (value) {
                bl[8] = value!;

                setState(() {

                });

              } ,value: bl[8]),
          CheckboxListTile(
              title: Text("${fd[9]}"),
              subtitle: Text("200"),
              onChanged: (value) {
                bl[9] = value!;

                setState(() {

                });

              } ,value: bl[9]),
          CheckboxListTile(
              title: Text("${fd[10]}"),
              subtitle: Text("200"),
              onChanged: (value) {
                bl[10] = value!;

                setState(() {

                });

              } ,value: bl[10]),
          CheckboxListTile(
              title: Text("${fd[11]}"),
              subtitle: Text("200"),
              onChanged: (value) {
                bl[11] = value!;

                setState(() {

                });

              } ,value: bl[11]),
          CheckboxListTile(
              title: Text("${fd[12]}"),
              subtitle: Text("200"),
              onChanged: (value) {
                bl[12] = value!;

                setState(() {

                });

              } ,value: bl[12]),
          CheckboxListTile(
              title: Text("${fd[13]}"),
              subtitle: Text("200"),
              onChanged: (value) {
                bl[13] = value!;

                setState(() {

                });

              } ,value: bl[13]),
          CheckboxListTile(
              title: Text("${fd[14]}"),
              subtitle: Text("200"),
              onChanged: (value) {
                bl[14] = value!;

                setState(() {

                });

              } ,value: bl[14]),
          CheckboxListTile(
              title: Text("${fd[15]}"),
              subtitle: Text("200"),
              onChanged: (value) {
                bl[15] = value!;

                setState(() {

                });

              } ,value: bl[15]),
        ],
      ),
    );
  }
}
