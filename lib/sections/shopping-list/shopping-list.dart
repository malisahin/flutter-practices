import 'package:combine_mobile/sections/shopping-list/product.dart';
import 'package:combine_mobile/sections/shopping-list/shopping-list-item.dart';
import 'package:flutter/material.dart';

class ShoppingList extends StatefulWidget {
  ShoppingList({Key key, this.products}) : super(key: key);

  final List<Product> products;

  @override
  State createState() {
    return ShoppingListState();
  }
}

class ShoppingListState extends State<ShoppingList> {
  Set<Product> shoppingCart = Set<Product>();

  void handleCartChanged(Product product, bool inCart) {
    setState(() {
      if (inCart)
        shoppingCart.add(product);
      else
        shoppingCart.remove(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 8),
        children: widget.products.map((product) {
          return ShoppingListItem(
              product: product,
              inCart: shoppingCart.contains(product),
              onCartChanged: handleCartChanged);
        }).toList(),
      ),
    );
  }
}

class ShoppingListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Shopping App',
        home: ShoppingList(
          products: <Product>[
            Product(name: 'Eggs'),
            Product(name: 'Flour'),
            Product(name: 'Chocolate chips'),
          ],
        ));
  }
}
