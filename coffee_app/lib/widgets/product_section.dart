import 'package:coffee_app/model/product_model.dart';
import 'package:coffee_app/screens/product_screen.dart';
import 'package:flutter/material.dart';

class ProductSection extends StatefulWidget {
  final Product product;
  ProductSection({this.product});
  
  @override
  _ProductSectionState createState() => _ProductSectionState();
}

class _ProductSectionState extends State<ProductSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white60,
      width: double.infinity,
      child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          final product = products[index];
          return Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white30,
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey[400],
                  width: 1,
                ),
              ),
            ),
            child: Row(
              children: <Widget>[
                Image.asset(
                  product.image,
                  width: 50,
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        product.product,
                        style: TextStyle(
                          color: Colors.brown[900],
                          fontSize: 18,
                        ),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.brown[300],
                            size: 30,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductScreen(product: products[index],)),
                            );
                          }),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
