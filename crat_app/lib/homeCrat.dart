import 'package:crat_app/items.dart';
import 'package:crat_app/model/crat.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class crathome extends StatefulWidget {
  const crathome({Key? key}) : super(key: key);

  @override
  State<crathome> createState() => _crathomeState();
}

class _crathomeState extends State<crathome> {
  List<Items> items = [
    Items('S 20 ultra', 250),
    Items('P 30 Pro', 350),
    Items('G 7 Pro', 120),
    Items('A 10 S', 150),
  ];
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text(
          'Home Crat',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'checkout');
                  },
                  icon: const Icon(Icons.add_shopping_cart)),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Consumer(
                  builder: (context, crat c1, child) {
                    return Text(
                      '${c1.count}',
                      style: const TextStyle(
                          color: Colors.yellow,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    );
                  },
                ),
              )
            ],
          )
        ],
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, i) {
            return Card(child: Consumer(
              builder: (context, crat c1, child) {
                return ListTile(
                  title: Text(
                    items[i].name,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () async{
                      c1.add(items[i]);
                      var snackbar = SnackBar(content: Container(
                              color: Colors.lightBlue,
                              height: 40,
                              width: double.infinity,
                              padding: const EdgeInsets.all(5),
                              //margin: const EdgeInsets.all(10),
                              child: Text(
                                "You add ${c1.count} phones",
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                            duration: const Duration(seconds: 2),);
                            scaffoldKey.currentState?.showSnackBar(snackbar);
                    },
                  ),
                );
              },
            ));
          }),
    );
  }
}
