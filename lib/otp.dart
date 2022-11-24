import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  TextEditingController txtlength = TextEditingController();
  int i = 0;
  int n = 0;
  int tamp1 = 0;
  int newno = 0;
  List l1 = [];
  String? len;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 2, 70),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "OTP Generator",
              style: TextStyle(
                  color: Color.fromARGB(255, 246, 225, 121), fontSize: 30),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              margin: EdgeInsets.only(left: 70, right: 70),
              child: TextField(
                cursorColor: Color.fromARGB(255, 246, 225, 121),
                controller: txtlength,
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 246, 225, 121)),
                decoration: InputDecoration(
                  hintText: "Enter OTP Length",
                  hintStyle: TextStyle(color: Color.fromARGB(255, 246, 225, 121)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 246, 225, 121), width: 2.0),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 246, 225, 121), width: 2.0),
                  ),
                ),
              ),
              color: Color.fromARGB(255, 3, 2, 70),
            ),
            SizedBox(
              height: 130,
            ),
            InkWell(
              child: Container(
                margin: EdgeInsets.only(left: 80, right: 80),
                height: 60,
                alignment: Alignment.center,
                child: Text(
                  "Generate OTP",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 248, 220, 194),
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 248, 220, 194),
                    Color.fromARGB(255, 248, 211, 102),
                  ]),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onTap: () {
                var rnd = Random();
                len = txtlength.text;

                var next = rnd.nextDouble() * 10000000000000;

                while (next <= 100000000000000) {
                  next *= 10;
                }
                setState(() {
                  newno = next.toInt();
                });
              },
            ),
            SizedBox(
              height: 130,
            ),
            Container(
              margin: EdgeInsets.only(left: 50, right: 50),
              height: 70,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      alignment: Alignment.center,
                      child: Text(
                        txtlength.text.isNotEmpty
                            ? "${newno.toString().substring(0, int.parse(txtlength.text))}"
                            : "",
                        style: TextStyle(fontSize: 30, letterSpacing: 10),
                      )),
                ],
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 250, 217, 187),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            SizedBox(
              height: 130,
            ),
            Container(
              margin: EdgeInsets.only(left: 120, right: 120),
              height: 50,
              alignment: Alignment.center,
              child: Text(
                "Reset",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 248, 220, 194),
                  Color.fromARGB(255, 242, 201, 77),
                ]),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}