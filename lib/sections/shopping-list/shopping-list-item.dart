import 'package:combine_mobile/sections/shopping-list/product.dart';
import 'package:flutter/material.dart';

typedef void CartChangedCallback(Product product, bool inCart);

class ShoppingListItem extends StatelessWidget {
  final Product product;
  final bool inCart;
  final CartChangedCallback onCartChanged;

  ShoppingListItem({Product product, this.inCart, this.onCartChanged})
      : this.product = product,
        super(key: ObjectKey(product));

  Color getColor(BuildContext context) {
    return inCart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle getTextStyle(BuildContext context) {
    if (!inCart) return null;

    return TextStyle(
        color: Colors.black54, decoration: TextDecoration.lineThrough);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onCartChanged(product, !inCart);
      },
      leading: CircleAvatar(
        backgroundColor: getColor(context),
        child: Text(product.name[0]),
      ),
      title: Text(
        product.name,
        style: getTextStyle(context),
      ),
    );
  }
}
