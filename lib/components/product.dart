import 'package:flutter/material.dart';
import 'package:market_11_27/pages/product_cart.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key, required this.images, required this.name, required this.index_numer, required this.price});

final String images;
final String name;
final int index_numer;
final String price;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.all(8),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Image.network('${images}')
            ),
          Expanded(
            flex: 1,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Цена:   ",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      Text(
                                '${price}',
                                style: TextStyle(color: Colors.green, fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                    ],
                  ),
                ),
             Container(
              padding: EdgeInsets.all(8),
               child: Text('${name}', 
               style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
               ),
             ),
                ElevatedButton(
                    onPressed: (){Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  ProductCart(numb: index_numer)),
                              );}, 
                    child: Text('Подробнее')
                    ),
              ],
            ),
          ),
        ],
      ),
    ); 
  }
}