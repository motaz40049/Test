import 'package:crat_app/model/crat.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class checkout extends StatefulWidget {
  const checkout({Key? key}) : super(key: key);

  @override
  State<checkout> createState() => _checkoutState();
}

class _checkoutState extends State<checkout> {
  dynamic pushways;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Check out',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Consumer(
            builder: (context, crat c2, child) {
              return Text(
                '${c2.totalPrice}',
                style: const TextStyle(
                    color: Colors.yellow,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              );
            },
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Consumer(
              builder: (context, crat c2, child) {
                return ListView.builder(
                    itemCount: c2.basketshoping.length,
                    itemBuilder: (context, i) => Card(
                            child: ListTile(
                          title: Text(c2.basketshoping[i].name),
                          trailing: IconButton(
                            icon: const Icon(Icons.remove_circle),
                            onPressed: () {
                              c2.removeCrat(c2.basketshoping[i]);
                            },
                          ),
                        )));
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
                child: ElevatedButton(
              onPressed: () {
                //Navigator.pushNamed(context, 'test');
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Push money"),
                        content: Column(
                          children: [
                            const Text(
                              "By Which app you want push money ?",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            RadioListTile(value: "Bankak", groupValue: pushways, onChanged: (val){
                              setState(() {
                                pushways = val;
                              });
                            },
                            title: const Text("Bankak" , style: TextStyle(color: Colors.black , fontSize: 16),),
                            ),
                            RadioListTile(value: "OCash", groupValue: pushways, onChanged: (val){
                              setState(() {
                                pushways = val;
                              });
                            },
                            title: const Text("OCash" , style: TextStyle(color: Colors.black , fontSize: 16),),
                            ),
                            RadioListTile(value: "Saheel", groupValue: pushways, onChanged: (val){
                              setState(() {
                                pushways = val;
                              });
                            },
                            title: const Text("Saheel" , style: TextStyle(color: Colors.black , fontSize: 16),),
                            ),
                            RadioListTile(value: "Fawree", groupValue: pushways, onChanged: (val){
                              setState(() {
                                pushways = val;
                              });
                            },
                            title: const Text("Fawree" , style: TextStyle(color: Colors.black , fontSize: 16),),
                            ),
                          ],
                        ),
                      );
                    });
              },
              style: ElevatedButton.styleFrom(
                  alignment: Alignment.center,
                  onPrimary: Colors.white,
                  primary: Colors.blue,
                  padding: const EdgeInsets.all(5),
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
              child: const Text('Buy'),
            )),
          )
        ],
      ),
    );
  }
}
