import 'package:flutter/material.dart';
import 'package:shopapp/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 49990,
      "price": 29990,
    },
    {
      "name": "Dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 69990,
      "price": 39990,
    },
    {
      "name": "Cool Hills",
      "picture": "images/products/hills1.jpeg",
      "old_price": 129990,
      "price": 109990,
    },
    {
      "name": "Amazing Hills",
      "picture": "images/products/hills2.jpeg",
      "old_price": 149990,
      "price": 119990,
    },
    {
      "name": "Dress",
      "picture": "images/products/skt1.jpeg",
      "old_price": 69990,
      "price": 39990,
    },
    {
      "name": "Dress",
      "picture": "images/products/skt2.jpeg",
      "old_price": 69990,
      "price": 39990,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int_index) {
          return Single_prod(
            prod_name: product_list[int_index]['name'],
            prod_picture: product_list[int_index]['picture'],
            prod_old_price: product_list[int_index]['old_price'],
            prod_price: product_list[int_index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                //here we are passing the values of the product to the products details
              builder: (context) => new ProductDetails(
                product_detail_name: prod_name,
                product_detail_new_price: prod_price,
                product_detail_old_price: prod_old_price,
                product_detail_picture: prod_picture,
              ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child: Row(children: <Widget>[
                      Expanded(
                        child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                      ),
                        Text("\$${prod_price}", style:  TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
                    ]
                    ),
            ),
                       child: Image.asset(prod_picture),
          ),
        ),
      ),
    ));
  }
}
