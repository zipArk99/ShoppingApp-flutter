import 'package:flutter/material.dart';
import 'package:shop/screens/edit_product_screen.dart';

class UserProductItem extends StatelessWidget {
  final String productTitle;
  final String imageUrl;
  final double productPrice;
  UserProductItem({
    required this.productTitle,
    required this.imageUrl,
    required this.productPrice,
  });
  @override
  Widget build(BuildContext contx) {
    return ListTile(
      onTap: () {},
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(productTitle),
      trailing: Container(
        width: 100,
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(contx)
                    .pushNamed(EditProductScreen.EditProductScreenRoute);
              },
              icon: Icon(
                Icons.edit,
                color: Theme.of(contx).accentColor,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                color: Theme.of(contx).errorColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
