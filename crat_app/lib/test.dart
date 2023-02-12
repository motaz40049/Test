import 'package:flutter/material.dart';

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  dynamic pushways;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Test"),
        ),
        body: Column(children: [
          const Text(
            "By Which app you want push money ?",
            style: TextStyle(
                color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          RadioListTile(
            value: "Bankak",
            groupValue: pushways,
            onChanged: (val) {
              setState(() {
                pushways = val!;
                print(val);
                print("pushway $pushways");
              });
            },
            title: const Text(
              "Bankak",
              style: TextStyle(color: Colors.blue, fontSize: 16),
            ),
          ),
          RadioListTile(
            value: "OCash",
            groupValue: pushways,
            onChanged: (val) {
              setState(() {
                pushways = val;
                print(val);
                print("pushway $pushways");
              });
            },
            title: const Text(
              "OCash",
              style: TextStyle(color: Colors.blue, fontSize: 16),
            ),
          ),
          RadioListTile(
            value: "Saheel",
            groupValue: pushways,
            onChanged: (val) {
              setState(() {
                pushways = val;
                print(val);
                print("pushway $pushways");
              });
            },
            title: const Text(
              "Saheel",
              style: TextStyle(color: Colors.blue, fontSize: 16),
            ),
          ),
          RadioListTile(
            value: "Fawree",
            groupValue: pushways,
            onChanged: (val) {
              setState(() {
                pushways = val;
                print(val);
                print("pushway $pushways");
              });
            },
            title: const Text(
              "Fawree",
              style: TextStyle(color: Colors.blue, fontSize: 16),
            ),
          ),
        ]));
  }
}
