import 'package:coffee_app/widgets/product_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.yellow,
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/coffelogo.png',
                  fit: BoxFit.contain,
                  height: 50,
                  color: Colors.black,
                ),
                SizedBox(width: 10),
                Container(
                  child: Text(
                    'letsCoffe!',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Billabong',
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              new Container(
                color: Colors.yellow,
              ),
              new Container(
                color: Colors.orange,
              ),
              new Container(
                color: Colors.white,
                child: ProductSection(),
              ),
              new Container(
                color: Colors.red,
              ),
            ],
          ),
          backgroundColor: Colors.white,
          bottomNavigationBar: new TabBar(
            tabs: [
              Tab(
                icon: new Icon(Icons.home),
              ),
              Tab(
                icon: new Icon(Icons.place),
              ),
              Tab(
                icon: new Icon(Icons.free_breakfast),
              ),
              Tab(
                icon: new Icon(Icons.perm_identity),
              )
            ],
            labelColor: Colors.brown,
            unselectedLabelColor: Colors.brown[200],
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.brown,
          ),
        ),
      ),
    );
  }
}
