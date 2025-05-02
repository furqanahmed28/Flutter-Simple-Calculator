import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreenAccent),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Calculator',),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int result = 0;
  String display = "";
  void Calculator(String display) {
    int tmprslt = 0;
    int currentNum = 0;
    String currentOp = '+';
    for (int i = 0; i < display.length; i++) {
      String char = display[i];
      if (char == '+' || char == '-' || char == '*' || char == '/') {
        if (currentOp == '+') {
          tmprslt += currentNum;
        } else if (currentOp == '-') {
          tmprslt -= currentNum;
        } else if (currentOp == '*') {
          tmprslt *= currentNum;
        } else if (currentOp == '/') {
          tmprslt ~/= currentNum;
        }
        currentOp = char;
        currentNum = 0;
      } else {
        currentNum = currentNum * 10 + int.parse(char);
      }
    }
    if (currentOp == '+') {
      tmprslt += currentNum;
    } else if (currentOp == '-') {
      tmprslt -= currentNum;
    } else if (currentOp == '*') {
      tmprslt *= currentNum;
    } else if (currentOp == '/') {
      tmprslt ~/= currentNum;
    }
    result = tmprslt;
  }
  void one() {
    setState(() {
      display += '1';
      Calculator(display);
    });
  }
  void two() {
    setState(() {
      display += '2';
      Calculator(display);
    });
  }
  void three() {
    setState(() {
      display += "3";
      Calculator(display);
    });
  }
  void four() {
    setState(() {
      display += '4';
      Calculator(display);
    });
  }
  void five() {
    setState(() {
      display += '5';
      Calculator(display);
    });
  }
  void six() {
    setState(() {
      display += '6';
      Calculator(display);
    });
  }
  void seven() {
    setState(() {
      display += '7';
      Calculator(display);
    });
  }
  void eight() {
    setState(() {
      display += '8';
      Calculator(display);
    });
  }
  void point() {
    setState(() {
      display += '.';
    });
  }
  void equals() {
    setState(() {
      Calculator(display);
      display = '$result';
    });
  }
  void nine() {
    setState(() {
      display += '9';
      Calculator(display);
    });
  }
  void zero() {
    setState(() {
      display += '0';
      Calculator(display);
    });
  }
  void c() {
    setState(() {
      display = '';
      result = 0;
    });
  }
  void mul() {
    setState(() {
      display += '*';
      Calculator(display);
    });
  }
  void div() {
    setState(() {
      display += '/';
      Calculator(display);
    });
  }
  void add() {
    setState(() {
      display += '+';
      Calculator(display);
    });
  }
  void min() {
    setState(() {
      display += '-';
      Calculator(display);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Display:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  width: 60,
                ),
                SizedBox(
                  width: 60,
                ),
                SizedBox(
                  width: 60,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  display,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  width: 640,
                )
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("")],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Result:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  width: 60,
                ),
                SizedBox(
                  width: 60,
                ),
                SizedBox(
                  width: 60,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  result.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  width: 640,
                )
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("")],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("")],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("")],
            ),
            SizedBox(
                height: 75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    FloatingActionButton(
                      onPressed: one,
                      tooltip: 'One',
                      child: const Text(
                        '1',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    FloatingActionButton(
                      onPressed: two,
                      tooltip: 'Two',
                      child: const Text(
                        '2',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    FloatingActionButton(
                      onPressed: three,
                      tooltip: 'Three',
                      child: const Text(
                        '3',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    FloatingActionButton(
                      onPressed: add,
                      tooltip: 'Add',
                      child: const Text(
                        '+',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(
                height: 75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(width: 10),
                    FloatingActionButton(
                      onPressed: four,
                      tooltip: 'Four',
                      child: const Text(
                        '4',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    FloatingActionButton(
                      onPressed: five,
                      tooltip: 'Five',
                      child: const Text(
                        '5',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    FloatingActionButton(
                      onPressed: six,
                      tooltip: 'Six',
                      child: const Text(
                        '6',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    FloatingActionButton(
                      onPressed: min,
                      tooltip: 'Subtract',
                      child: const Text(
                        '-',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(
                height: 75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(width: 10),
                    FloatingActionButton(
                      onPressed: seven,
                      tooltip: 'Seven',
                      child: const Text(
                        '7',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    FloatingActionButton(
                      onPressed: eight,
                      tooltip: 'Eight',
                      child: const Text(
                        '8',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    FloatingActionButton(
                      onPressed: nine,
                      tooltip: 'Nine',
                      child: const Text(
                        '9',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    FloatingActionButton(
                      onPressed: mul,
                      tooltip: 'Multiply',
                      child: const Text(
                        'x',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(
                height: 75,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const SizedBox(width: 10),
                  FloatingActionButton(
                    onPressed: zero,
                    tooltip: 'Zero',
                    child: const Text(
                      '0',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  FloatingActionButton(
                    onPressed: point,
                    tooltip: 'Point',
                    child: const Text(
                      '.',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  FloatingActionButton(
                    onPressed: c,
                    tooltip: 'Clear',
                    child: const Text(
                      'C',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  FloatingActionButton(
                    onPressed: div,
                    tooltip: 'Divide',
                    child: const Text(
                      '/',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ])),
            SizedBox(
                height: 75,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const SizedBox(width: 208),
                  FloatingActionButton(
                    onPressed: equals,
                    tooltip: 'Equals',
                    child: const Text(
                      '=',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ]))
          ],
        ),
      ),
    );
  }
}
