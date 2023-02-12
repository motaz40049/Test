import 'package:crat_app/items.dart';
import 'package:flutter/material.dart';

class crat with ChangeNotifier{
List<Items> _items = [];
double _price = 0.0;

void add(Items item){
  _items.add(item);
  _price += item.price;
  notifyListeners();
}

void removeCrat(Items item){
  _items.remove(item);
  _price -= item.price;
  notifyListeners();
}

List<Items> get basketshoping => _items;

int get count=> _items.length;
double get totalPrice=> _price;

}