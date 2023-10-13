import 'package:calculator_app/screens/button.dart';
import 'package:calculator_app/screens/topbutton.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var userinput = '';
  var result = '';
  void anspress() {
    String replacex = userinput.replaceAll('x', '*');
    replacex = replacex.replaceAll('%', '/100');
    replacex = replacex.replaceAll('√', 'sqrt');
    Parser p = Parser();
    Expression expression = p.parse(replacex);
    ContextModel contextModel = ContextModel();
    double evl = expression.evaluate(EvaluationType.REAL, contextModel);
    result = evl.toString();
  }

  String firesult() {
    String results = result;
    if (results.endsWith('.0')) {
      results = results.substring(0, results.length - 2);
    }
    return results;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF010203),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          userinput.toString(),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 30),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        firesult(),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 30),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(80, 121, 102, 102),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 45),
                        child: Row(
                          children: [
                            TopButton(
                                onpres: () {
                                  userinput += '!';
                                  setState(() {});
                                },
                                title: "!"),
                            const SizedBox(
                              width: 25,
                            ),
                            TopButton(
                                onpres: () {
                                  userinput += '%';
                                  setState(() {});
                                },
                                title: "%"),
                            const SizedBox(
                              width: 30,
                            ),
                            TopButton(
                                onpres: () {
                                  userinput += '^';
                                  setState(() {});
                                },
                                title: "^"),
                            const SizedBox(
                              width: 35,
                            ),
                            TopButton(
                                onpres: () {
                                  userinput += '√';
                                  setState(() {});
                                },
                                title: "√")
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Button(
                            title: "(",
                            onpres: () {
                              userinput += '(';
                              setState(() {});
                            },
                          ),
                          Button(
                            title: ")",
                            onpres: () {
                              userinput += ')';
                              setState(() {});
                            },
                          ),
                          Button(
                              title: "/",
                              onpres: () {
                                userinput += '/';
                                setState(() {});
                              }),
                          Button(
                              title: "AC",
                              color: const Color(0xFFC5A472),
                              onpres: () {
                                userinput = '';
                                result = '';
                                setState(() {});
                              })
                        ],
                      ),
                      Row(
                        children: [
                          Button(
                            title: "7",
                            onpres: () {
                              userinput += '7';
                              setState(() {});
                            },
                          ),
                          Button(
                            title: "8",
                            onpres: () {
                              userinput += '8';
                              setState(() {});
                            },
                          ),
                          Button(
                              title: "9",
                              onpres: () {
                                userinput += '9';
                                setState(() {});
                              }),
                          Button(
                              title: "x",
                              color: const Color(0xFFC5A472),
                              onpres: () {
                                userinput += 'x';
                                setState(() {});
                              })
                        ],
                      ),
                      Row(
                        children: [
                          Button(
                            title: "4",
                            onpres: () {
                              userinput += '4';
                              setState(() {});
                            },
                          ),
                          Button(
                            title: "5",
                            onpres: () {
                              userinput += '5';
                              setState(() {});
                            },
                          ),
                          Button(
                              title: "6",
                              onpres: () {
                                userinput += '6';
                                setState(() {});
                              }),
                          Button(
                              title: "-",
                              color: const Color(0xFFC5A472),
                              onpres: () {
                                userinput += '-';
                                setState(() {});
                              })
                        ],
                      ),
                      Row(
                        children: [
                          Button(
                            title: "1",
                            onpres: () {
                              userinput += '1';
                              setState(() {});
                            },
                          ),
                          Button(
                            title: "2",
                            onpres: () {
                              userinput += '2';
                              setState(() {});
                            },
                          ),
                          Button(
                              title: "3",
                              onpres: () {
                                userinput += '3';
                                setState(() {});
                              }),
                          Button(
                              title: "+",
                              color: const Color(0xFFC5A472),
                              onpres: () {
                                userinput += '+';
                                setState(() {});
                              })
                        ],
                      ),
                      Row(
                        children: [
                          Button(
                            title: "0",
                            onpres: () {
                              userinput += '0';
                              setState(() {});
                            },
                          ),
                          Button(
                            title: ".",
                            onpres: () {
                              userinput += '.';
                              setState(() {});
                            },
                          ),
                          Button(
                              title: "ANS",
                              onpres: () {
                                anspress();
                                setState(() {});
                              }),
                          Button(
                              title: "DEL",
                              color: const Color(0xFFC5A472),
                              onpres: () {
                                userinput = userinput.substring(
                                    0, userinput.length - 1);
                                setState(() {});
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
