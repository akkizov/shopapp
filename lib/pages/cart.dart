import 'package:flutter/material.dart';


// my imports
import 'package:shopapp/components/cart_products.dart';
class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          elevation: 0.0,
          backgroundColor: Colors.purple,
          title: Text('Cart'),
          actions: <Widget>[
            new IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
            onPressed: () {}),
          ]
    ),

      body: Cart_products(),

      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(child: ListTile(
              title: Text("Total:"),
              subtitle: Text("\$230"),
            )),
            
            Expanded(
                child: MaterialButton(onPressed: (){},
                  child: Text("Check out", style: TextStyle(color: Colors.white),),
                color: Colors.purple
                   ,)
            )
          ],
        ),
      ),
    );
  }
}
