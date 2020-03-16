import 'package:coffee_app/model/product_model.dart';
import 'package:flutter/material.dart';

class PdetailScreen extends StatefulWidget {
  @override
  _PdetailScreenState createState() => _PdetailScreenState();
}

class _PdetailScreenState extends State<PdetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text('Product',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            )),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            final product = products[index];
            return Stack(
              children: <Widget>[
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.brown[200],
                ),
                Positioned(
                  child: Image.asset(
                    product.image,
                    height: 120,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
