import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:shopapp/components/horizontal_listview.dart';
import 'package:shopapp/components/products.dart';
import 'package:shopapp/pages/cart.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w1.jpeg'),
          AssetImage('images/w3.jpeg'),
          AssetImage('images/w4.jpeg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.black,
        indicatorBgPadding: 8.0,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
          elevation: 0.0,
          backgroundColor: Colors.purple,
          title: Text('ShopApp'),
          actions: <Widget>[
            new IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                )),
            new IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
              onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              },
            )
          ]),
      drawer: new Drawer(
          child: new ListView(
        children: [
          // header
          new UserAccountsDrawerHeader(
            accountName: Text('AIDAR AKKIZOV'),
            accountEmail: Text('AIDAR@mail.ru'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: new BoxDecoration(color: Colors.purple),
          ),
          //body
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Hello'),
              leading: Icon(Icons.home, color: Colors.purple),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Kak Ty u b rat'),
              leading: Icon(Icons.person, color: Colors.purple),
            ),
          ),

            InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('esketit'),
              leading: Icon(Icons.dangerous, color: Colors.purple),
            ),
          ),

            InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
            },
            child: ListTile(
              title: Text('Shopping Cart'),
              leading: Icon(Icons.shopping_cart, color: Colors.purple),
            ),
          ),

            InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('ooo my god'),
              leading: Icon(Icons.golf_course, color: Colors.purple),
            ),
          ),

            Divider(),

            InkWell(
            onTap: () {},
              child: ListTile(
                title: Text('you got lucky buddy'),
                leading: Icon(Icons.podcasts, color: Colors.blue),
            ),
          ),
            InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('About'),
              leading: Icon(Icons.question_mark_rounded, color: Colors.green),
            ),
          )
        ],
      )),
      body: new ListView(
        children: <Widget>[
          //image carousel begins here
          image_carousel,
          //padding widget
          new Padding(
            padding: const EdgeInsets.all(10.0),
            child: new Text('Categories'),
          ),

          //Horizontal list view begins here
          HorizontalList(),

          //padding widget
          new Padding(
            padding: const EdgeInsets.all(10.0),
            child: new Text('Recent Products'),
          ),

          //grid view
          Container(
            height: 320.0,
            child: Products(),
          )
        ],
      ),
    );
  }
}
