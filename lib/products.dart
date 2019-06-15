import 'package:flutter/material.dart';


class Products extends StatelessWidget {  // immutable so it needs to be marked unchangable with final keyword

  final List<String> products;  // would work without final keyword but it's better code.

  Products([this.products =  const []]) {
    // constructor... take incoming argument with the same name of products allow data into Products through constructor and bind it to products
    print('[Products Widget] Constructor ');
  }
      @override
      Widget build(BuildContext context) {
        print('[Products Widget] build() ');
        return Column(
          children: products.map((element) =>
              Card(
                child: Column(
                  children: <Widget>[
                    //Image.asset(/assets/food.jpg
                    Text(element)
                  ],
                ),
              ),
          ).toList(),
        );
      }
    }
