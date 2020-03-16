import 'package:coffee_app/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  final Product product;
  ProductScreen({this.product});

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          AppBar(
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
          Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.brown[200],
              ),
              Positioned(
                child: Image.asset(
                  widget.product.image,
                  height: 120,
                ),
              ),
            ],
          ),
          Container(
            //height: 100,
            //color: Colors.cyanAccent,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.product.product,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.brown[600],
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      widget.product.price,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.brown[300],
                      ),
                    ),
                  ],
                ),
                Container(
                    child: Row(
                  children: <Widget>[
                    Text('1'),
                    SizedBox(width: 5),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.brown[200],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          bottomLeft: Radius.circular(40.0),
                        ),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.brown[900],
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.brown[200],
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40.0),
                          bottomRight: Radius.circular(40.0),
                        ),
                      ),
                      child: Icon(
                        Icons.remove,
                        color: Colors.brown[900],
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ),
          Container(
            //color: Colors.deepOrange,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Size',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.brown[400],
                  ),
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.free_breakfast,
                          color: Colors.brown[300],
                        ),
                        onPressed: () {}),
                    IconButton(
                        icon: Icon(
                          Icons.free_breakfast,
                          color: Colors.brown,
                          size: 30,
                        ),
                        onPressed: () {}),
                    IconButton(
                        icon: Icon(
                          Icons.free_breakfast,
                          color: Colors.brown[300],
                          size: 40,
                        ),
                        onPressed: () {}),
                  ],
                ),
              ],
            ),
          ),
          Container(
            //height: 100,
            //color: Colors.cyanAccent,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      'Sugar',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.brown[400],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.clear,
                      size: 20,
                      color: Colors.brown[300],
                    ),
                    Icon(
                      Icons.crop_square,
                      size: 30,
                      color: Colors.brown,
                    ),
                    Icon(
                      Icons.crop_square,
                      size: 40,
                      color: Colors.brown[300],
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            //height: 100,
            color: Colors.grey[300],
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'TOTAL',
                  style: TextStyle(
                    color: Colors.brown[600],
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  widget.product.price,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.brown[600],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
            decoration: BoxDecoration(
              color: Colors.brown[300],
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
            child: Text('Add to Cart', style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),),
          ),
        ],
      ),
    );
  }
}
